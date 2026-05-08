#pragma once
#include "../traffic_handler/spaceTimeGrid.h"
#include "../types.h"
#include <unordered_map>
#include <queue>
#include <string>
#include <mutex>



class trafficHandler {
private:

    static const char NUM_Routes = 12;
    //Maximum depth of delay handler can check
    const uint8_t MAX_DELAY = 10; 
    int current_system_tick;

    //the traffic handler uses a spacetime grid object
    SpaceTimeGrid grid;

    //Datastructures for storing data

    //We use an unordered map for the storage of active car structs as the IDs for the cars can be unpredictable
    //For now IDs will not be re-used, so the range of IDs for long enough running is a bit 
    std::unordered_map<unsigned int, ActiveCar> activeCars; 
    
    //Queue for arriving cars to get allocated a route
    //This also contains a mutex for preventing race conditions between the traffic handler reading routeRequests from the buffer and the
    //TCP server adding routeRequests
    std::queue<routeRequest>  waitingQueue;
    std::mutex queue_mutex;
    
    //Template for the possible routes that can be tacken
    std::array<RouteTemplate,NUM_Routes> routeTemplates;


    bool checkAndLockGrid(int car_id, const RouteTemplate& tmpl, Waypoint* out_waypoints, uint8_t& out_num_waypoints);    
    //Checks queue for cars making requests
    //If found makes a path for this car if it can otherwise gives car path to holding position 
    //
    bool handleRequestQueue(Waypoint* out_waypoints, uint8_t& out_num_waypoints);
    
    //checks payload recieved from telemetry update to see if car is done
    bool carDone(telemetryPayload carUpdate);
    
    //
    bool checkWatchdogTimeouts();



public:

    trafficHandler();

    // This should be loaded on boot of the program
    void loadTemplates();

    //These are called asynchronously via the TCP server
    void onRouteRequest(routeRequest request);
    bool onTelemetryUpdate(telemetryPayload payload);


    //These are called synchronously every clock tick 
    //Clock is advanced, memory is cleared, queue is checked
    void tick();
};