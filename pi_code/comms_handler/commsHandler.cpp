#include "commsHandler.h"
#include <cstdio>
#include <cstring>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>

commsHandler::commsHandler(trafficHandler& handler, uint16_t port)
    : handler(handler), onBoarding_port(port)
{
    if (!setup_onBoardingSocket())
    {
        std::cerr << "Failed to set up onboarding socket on port " << port << "\n";
    }
}

void commsHandler::start_coms()
{
    // Accept thread — blocks waiting for new cars to connect
    std::thread(&commsHandler::accept_clientSocket, this).detach();

    // Send thread — blocks waiting for commands to appear in the queue
    std::thread(&commsHandler::sendLoop, this).detach();
}

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
    if(listen(onBoarding_socket,5) < 0) { return false; }
 
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

        // Set 5 second timeout for handshake
        // If car connects but never sends its request, we close and move on
        struct timeval timeout{ .tv_sec = 5, .tv_usec = 0 };
        setsockopt(carSocket, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));

        // Read the full routeRequest into a raw buffer then deserialize
        // Reading the full struct at once avoids the type byte misalignment problem
        uint8_t buffer[sizeof(routeRequest)];
        if (!recvExact(carSocket, buffer, sizeof(routeRequest))) {
            close(carSocket);
            continue;
        }

        routeRequest request = deserialize_routeRequest(buffer);

        // Onboarding only accepts PATH_REQUEST — reject anything else immediately
        if (request.type != carMessage::PATH_REQUEST) {
            close(carSocket);
            continue;
        }

        // Clear handshake timeout — car identified itself, connection is now live
        struct timeval no_timeout{ .tv_sec = 0, .tv_usec = 0 };
        setsockopt(carSocket, SOL_SOCKET, SO_RCVTIMEO, &no_timeout, sizeof(no_timeout));

        {
            std::lock_guard<std::mutex> lock(car_socket_mutex);
            carSockets[request.car_id] = carSocket;
        }

        // Push the route request into the traffic handler queue for processing on next tick
        handler.onRouteRequest(request);

        uint32_t car_id = request.car_id;

        std::thread car_thread(&commsHandler::receiveLoop, this, carSocket, car_id);
        car_thread.detach();
    }
}

void commsHandler::receiveLoop(int car_socket_fd, uint32_t car_id){
    while (true)
    {
        // Every car message starts with a 1-byte carMessage type
        // Read it first so we know which struct size to read next
        uint8_t buffer[sizeof(telemetryPayload)]; // telemetryPayload is the largest incoming struct
        if (!recvExact(car_socket_fd, buffer, sizeof(carMessage)))
        {
            // Socket closed or error — remove car and exit thread
            std::lock_guard<std::mutex> lock(car_socket_mutex);
            carSockets.erase(car_id);
            close(car_socket_fd);
            return;
        }

        carMessage msg_type = static_cast<carMessage>(buffer[0]);

        // We already have the type byte in buffer[0]
        // Read the remaining bytes for this struct directly after it in the same buffer
        // so the deserializer receives a complete contiguous struct
        switch (msg_type)
        {
            case carMessage::UPDATE_POSITION:
            {
                if (!recvExact(car_socket_fd, buffer + sizeof(carMessage), sizeof(telemetryPayload) - sizeof(carMessage)))
                {
                    std::lock_guard<std::mutex> lock(car_socket_mutex);
                    carSockets.erase(car_id);
                    close(car_socket_fd);
                    return;
                }
                telemetryPayload payload = deserialize_telemetryPayload(buffer);
                handler.onTelemetryUpdate(payload);
                break;
            }

            case carMessage::ROUTE_COMPLETE:
            {
                if (!recvExact(car_socket_fd, buffer + sizeof(carMessage), sizeof(routeComplete) - sizeof(carMessage)))
                {
                    std::lock_guard<std::mutex> lock(car_socket_mutex);
                    carSockets.erase(car_id);
                    close(car_socket_fd);
                    return;
                }
                routeComplete complete = deserialize_routeComplete(buffer);
                // Route complete is passed to the handler as a telemetry payload
                // with ROUTE_COMPLETE type — handler checks this in carDone()
                telemetryPayload done{};
                done.type   = carMessage::ROUTE_COMPLETE;
                done.car_id = complete.car_id;
                handler.onTelemetryUpdate(done);
                break;
            }

            case carMessage::PATH_REQUEST:
            default:
                printf("Unexpected message type %d from car %u\n", (int)msg_type, car_id);
                break;
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

// =============================================================
// DESERIALIZERS
// Raw bytes to structs — structs are packed so direct cast is safe
// =============================================================

routeRequest commsHandler::deserialize_routeRequest(const uint8_t* payload) {
    return *(routeRequest*)payload;
}

telemetryPayload commsHandler::deserialize_telemetryPayload(const uint8_t* payload) {
    return *(telemetryPayload*)payload;
}

routeComplete commsHandler::deserialize_routeComplete(const uint8_t* payload) {
    return *(routeComplete*)payload;
}

// =============================================================
// SERIALIZERS
// Structs to raw bytes — structs are packed so direct cast is safe
// =============================================================

void commsHandler::serialize_pathCommand(const path_command& cmd, uint8_t* out_buffer, uint16_t& out_size) {
    out_size = sizeof(path_command);
    *(path_command*)out_buffer = cmd;
}

void commsHandler::serialize_stopCommand(const stop_command& cmd, uint8_t* out_buffer, uint16_t& out_size) {
    out_size = sizeof(stop_command);
    *(stop_command*)out_buffer = cmd;
}

// =============================================================
// PUBLIC QUEUE INTERFACE — called by tick()
// =============================================================

void commsHandler::queuePathCommand(const path_command& cmd) {
    QueuedCommand queued{};
    queued.car_id = cmd.car_id;
    serialize_pathCommand(cmd, queued.buffer, queued.size);
    {
        std::lock_guard<std::mutex> lock(command_mutex);
        commandQueue.push(queued);
    }
    command_cv.notify_one();
}

void commsHandler::queueStopCommand(const stop_command& cmd) {
    QueuedCommand queued{};
    queued.car_id = cmd.car_id;
    serialize_stopCommand(cmd, queued.buffer, queued.size);
    {
        std::lock_guard<std::mutex> lock(command_mutex);
        commandQueue.push(queued);
    }
    command_cv.notify_one();
}

void commsHandler::queueStopAll() {
    // Snapshot connected car IDs before releasing socket mutex
    // to avoid holding two mutexes simultaneously
    std::vector<uint32_t> connected_cars;
    {
        std::lock_guard<std::mutex> slock(car_socket_mutex);
        for (auto& [car_id, socket_fd] : carSockets) {
            connected_cars.push_back(car_id);
        }
    }

    for (uint32_t car_id : connected_cars) {
        stop_command stop{};
        stop.car_id  = car_id;
        stop.command = handlerCommand::EMERGENCY_STOP;
        queueStopCommand(stop);
    }
}