#include "commsHandler.h"
#include <cstdio>
#include <cstring>
#include <functional>
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>


bool commsHandler::setup_onBoardingSocket()
{
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

        RouteRequestPayload payload{};
        if (!recvExact(carSocket, (uint8_t*)&payload, sizeof(RouteRequestPayload))) {
            close(carSocket);
            continue;
        }


        


        // Store the socket against the car ID so we can send to it later
        {
            std::lock_guard<std::mutex> lock(car_socket_mutex);
            carSockets[car_id] = carSocket;
        }

        // Spawn a dedicated receive thread for this car
        // This thread will block on recvExact waiting for messages from this car
        std::thread car_thread(&commsHandler::receiveLoop, this, carSocket, car_id);
        car_thread.detach();
    }
}