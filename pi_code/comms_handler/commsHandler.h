#pragma once
#include "../traffic_handler/trafficHandler.h"
#include <cstdint>
#include <thread>
#include <queue>
#include <mutex>
#include <unordered_map>
#include <condition_variable>
#include "../types.h"

// The commsHandler performs communication between the car & traffic handler via TCP connections
// A TCP socket is exposed for receieving requests from the car for onboarding
// Once a connection from the car is receieved a dedicated socket for that car is created
// This is by the nature of TCP required as we have to store the required state for each connection

class commsHandler {
private:

    trafficHandler& handler;

    
    //Recieving socket for onboarding requests
    int onBoarding_socket;
    //Chosen port for socket
    uint16_t onBoarding_port;

    //Since a socket is created for each car connection we need to have a datastructure
    //to store them
    std::unordered_map<uint32_t, int> carSockets;
    std::mutex car_socket_mutex;

    // Bundles a serialized command with its target car_id for the send thread
    struct QueuedCommand {
        uint32_t car_id;
        uint8_t  buffer[512];
        uint16_t size;
    };

    //Queue for sending commands
    std::queue<QueuedCommand> commandQueue;
    std::mutex                command_mutex;
    std::condition_variable   command_cv;



    // Socket setup
    //Creates listening socket for onboarding requests 
    bool setup_onBoardingSocket();

    // Runs on its own thread
    // Blocked until a car sends an onboarding request
    // Deserializes the message extracting the car ID
    // Creates socket for car
    // Starts a dedicated rcvLoop thread for car
    // Pushes onboarding request to handler
    void accept_clientSocket();

    // Receive thread
    // blocked waiting for any incoming car packet
    // reads header, deserializes, pushes to handler
    void receiveLoop(int car_socket_fd, uint32_t car_id);

    // Send thread 
    // blocked waiting for commands to appear in commandQueue
    // takes from queue, serializes, pushes to car socket
    void sendLoop();

    // Reads exactly num_bytes from socket, handles partial TCP reads
    bool recvExact(int socket_fd, uint8_t* buffer, size_t num_bytes);

    // Deserializers
    void deserializeAndDispatch(uint8_t message_type, uint8_t* payload, uint16_t payload_size);
    routeRequest     deserialize_routeRequest(const uint8_t* payload);
    telemetryPayload deserialize_telemetryPayload(const uint8_t* payload);
    routeComplete    deserialize_routeComplete(const uint8_t* payload);

    // Serializers
    void serialize_pathCommand(const path_command& cmd, uint8_t* out_buffer, uint16_t& out_size);
    void serialize_stopCommand(const stop_command& cmd, uint8_t* out_buffer, uint16_t& out_size);

public:

    commsHandler(trafficHandler& handler, uint16_t recv_port, uint16_t send_port);

    // Starts both threads
    void start_coms();

    // Called by tick() to queue a command for sending
    void queuePathCommand(const path_command& cmd);
    void queueStopCommand(const stop_command& cmd);
};