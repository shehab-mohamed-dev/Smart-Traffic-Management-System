#include "commsHandler.h"
#include <cstdio>
#include <cstring>
#include <functional>
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>


bool commsHandler::setup_onBoardingSocket(){
    //Define the socket type
    //For our case we want a TCP socket
    //Choose IPV4, Choose protocol which is relible, sequenced, two-way byte stream.
    //When passing 0 to the input it defaults to TCP given SOCK_STREAM
    //NOTE THAT THIS JUST RETURNS AN INTEGER ID OF THAT CREATED SOCKET
    onBoarding_socket = socket(AF_INET, SOCK_STREAM, 0);
    if(onBoarding_socket < 0) { return false; }

    //We now define what the sockets definitions are
    //This data structure is to help us contain everything
    sockaddr_in onBoardingAddress{};
    
    //IPv4
    onBoardingAddress.sin_family = AF_INET;
    
    // 0 - 1023 are reserved for system, can be access program if root privileges are given
    //1024 - 49151 are for any standard user
    onBoardingAddress.sin_port = htons(onBoarding_port);
        
    //Telling socket to accept connects from any port
    onBoardingAddress.sin_addr.s_addr = INADDR_ANY;

    //Binds your generated socket with the address created
    //The ID of the created socket
    //Pointer to the address struct we defined
    //Size of that struct
    //Returns 0 on success & -1 on faliure
    if(bind(onBoarding_socket,(struct sockaddr*)& onBoardingAddress, sizeof(onBoardingAddress)) < 0) { return false; }

    //Socket starts listening and a backlog of 5 connections can be made until the connections are refused
    if(listen(onBoarding_socket,5) < 0) { return false; };
 
    return true;
}
void commsHandler::accept_clientSocket() {

    sockaddr_in CarAddress{};
    socklen_t client_len = sizeof(CarAddress);

    while (true) {

        // Blocks here until a car connects
        // Returns a dedicated socket for that car
        int carSocket = accept(onBoarding_socket, (struct sockaddr*)&CarAddress, &client_len);
        if (carSocket < 0) continue;


        // Read the message type first (assumed to be the first field, e.g. an enum/uint)
        carMessage msg_type{};
        if (!recvExact(carSocket, (uint8_t*)&msg_type, sizeof(carMessage))) {
            close(carSocket);
            continue;
        }

        // Onboarding only accepts routeRequest — reject anything else immediately
        if (msg_type != carMessage::PATH_REQUEST) {
            close(carSocket);
            continue;
        }

        routeRequest request{};
        if (!recvExact(carSocket, (uint8_t*)&request, sizeof(routeRequest)))
        {
            close(carSocket);
            continue;
        }

        if (request.type != carMessage::PATH_REQUEST)
        {
            close(carSocket);
            continue;
        }


        std::lock_guard<std::mutex> lock(car_socket_mutex);
        carSockets[request.car_id] = carSocket;

        // Spawn a dedicated receive thread for this car
        // Spawns a new thread to handle incoming data for this car using the receiveLoop member function.
        std::thread car_thread(&commsHandler::receiveLoop, this, carSocket, request.car_id);
        car_thread.detach();
    }
}

void commsHandler::receiveLoop(int car_socket_fd, uint32_t car_id){
    while (true)
    {
        // Every car message starts with a 1-byte carMessage type
        carMessage msg_type{};
        if (!recvExact(car_socket_fd, (uint8_t*)&msg_type, sizeof(carMessage)))
        {
            // Socket closed or error — remove car and exit thread
            std::lock_guard<std::mutex> lock(car_socket_mutex);
            carSockets.erase(car_id);
            close(car_socket_fd);
            return;
        }

        // We already consumed the type byte, so read only the remaining fields
        switch (msg_type)
        {
            case carMessage::UPDATE_POSITION:
            {

            }

            case carMessage::ROUTE_COMPLETE:
            {

            }

            case carMessage::PATH_REQUEST:
            default:

                
        }
    }

}

void commsHandler::sendLoop(){
    while (true)
    {
        std::unique_lock<std::mutex> lock(command_mutex);
        command_cv.wait(lock, [this] { return !commandQueue.empty(); });

        QueuedCommand cmd = commandQueue.front();
        commandQueue.pop();
        lock.unlock();

        // Look up the socket for this car
        int target_socket = -1;
        {
            std::lock_guard<std::mutex> slock(car_socket_mutex);
            auto it = carSockets.find(cmd.car_id);
            if (it == carSockets.end()) continue; // Car already disconnected
            target_socket = it->second;
        }

        // Best-effort send — partial sends are not retried here
        send(target_socket, cmd.buffer, cmd.size, 0);
    }
}

bool commsHandler::recvExact(int socket_fd, uint8_t* buffer, size_t num_bytes){
    size_t total = 0;
    while (total < num_bytes)
    {
        ssize_t received = recv(socket_fd, buffer + total, num_bytes - total, 0);
        if (received <= 0) return false; // Connection closed or error
        total += received;
    }
    return true;
}