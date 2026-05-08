#include <iostream>
#include <thread>
#include <chrono>
#include "traffic_handler/trafficHandler.h"
#include "comms_handler/commsHandler.h"

// How often the traffic handler ticks — 10 times per second
const int TICK_INTERVAL_MS = 100;

int main()
{
    std::cout << "Starting traffic controller...\n";

    trafficHandler traffic;
    commsHandler   comms(traffic, 9000);

    // Starts the accept thread and send thread
    comms.start_coms();

    std::cout << "Listening for cars on port 9000\n";

    // Main tick loop — runs forever, advancing the traffic handler clock
    while (true)
    {
        traffic.tick();
        std::this_thread::sleep_for(std::chrono::milliseconds(TICK_INTERVAL_MS));
    }

    return 0;
}