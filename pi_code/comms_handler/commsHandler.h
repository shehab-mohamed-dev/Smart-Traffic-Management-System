#pragma once
#include "../traffic_handler/trafficHandler.h"
#include <cstdint>
#include <thread>
#include <queue>
#include <mutex>
#include <condition_variable>

class commsHandler {
private:

    trafficHandler& handler;

    // Two sockets are made one for receiving car packets, one for sending commands
    //Recieving socket
    int recv_socket_fd;
    uint16_t recv_port;

    //Sending socket
    int send_socket_fd;
    uint16_t send_port;

    // Command queue 
    // Queue for sending commands
    std::queue<path_command> commandQueue;
    std::mutex command_mutex;
    std::condition_variable command_cv;

    // Sockets setup
    void setupRecvSocket();
    void setupSendSocket();

    // Receive thread
    // blocked waiting for any incoming car packet
    // reads header, deserializes, dispatches to handler
    void receiveLoop();

    // Send thread 
    // blocked waiting for commands to appear in commandQueue
    // pops, serializes, pushes to send socket
    void sendLoop();

    // Exact read helper
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