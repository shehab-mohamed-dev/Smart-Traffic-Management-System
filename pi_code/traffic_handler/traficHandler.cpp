#include "trafficHandler.h"
#include <cmath>


trafficHandler::trafficHandler(){

    //Intializing system clock to zero
    current_system_tick = 0;

    //Loading the templates for the paths
    loadTemplates();
}

bool trafficHandler::carDone(telemetryPayload carUpdate)
{
    if(carUpdate.type == carMessage::ROUTE_COMPLETE) 
    {
        activeCars.erase(carUpdate.car_id);
        return true;
    }
    return false;
}

//THIS FUNCTION WAS WRITTEN BY AI AND MUST BE REVIEWED THOURGHLY
void trafficHandler::loadTemplates() {
    
    // Helper lambda to safely add blocks with the 5-tick swept volume
    auto addSweptVolume = [](RouteTemplate& tmpl, int x, int y, uint8_t current_tick) {
        
        for (uint8_t len = 0; len < 5; len++) {
            if (tmpl.num_blocks < MAX_TEMPLATE_BLOCKS) {
                tmpl.required_blocks[tmpl.num_blocks] = {x, y, current_tick + len};
                tmpl.num_blocks++;
            }
        }
    };

    // =========================================================
    // 1. GENERATE STRAIGHT PATHS (17m long, constant speed)
    // =========================================================
    RouteID straight_routes[4] = {RouteID::S_to_N, RouteID::N_to_S, RouteID::W_to_E, RouteID::E_to_W};
    
    for (RouteID id : straight_routes) {
        RouteTemplate tmpl;
        tmpl.route_id = id;
        
        int start_x = 0, start_y = 0, dx = 0, dy = 0;
        
        if (id == RouteID::S_to_N) { start_x = 2; start_y = 8; dy = -1; }
        if (id == RouteID::N_to_S) { start_x = -2; start_y = -8; dy = 1; }
        if (id == RouteID::W_to_E) { start_x = -8; start_y = 2; dx = 1; }
        if (id == RouteID::E_to_W) { start_x = 8; start_y = -2; dx = -1; }

        int curr_x = start_x;
        int curr_y = start_y;
        
        for (int tick = 0; tick <= 16; tick++) {
            // Drop a waypoint every 2 meters for Python
            if (tick % 2 == 0 && tmpl.num_waypoints < MAX_WAYPOINTS) {
                tmpl.waypoints[tmpl.num_waypoints++] = {(float)curr_x, (float)curr_y};
            }
            // Add the physical block with swept volume
            addSweptVolume(tmpl, curr_x, curr_y, tick);
            
            curr_x += dx;
            curr_y += dy;
        }
        routeTemplates[static_cast<int>(id)] = tmpl;
    }

    // =========================================================
    // 2. GENERATE RIGHT TURNS (Tight radius: 6 meters)
    // =========================================================
    RouteID right_routes[4] = {RouteID::S_to_E, RouteID::E_to_N, RouteID::N_to_W, RouteID::W_to_S};
    
    for (RouteID id : right_routes) {
        RouteTemplate tmpl;
        tmpl.route_id = id;
        
        // Determine the pivot point (the street corner) and start/end angles
        int pivot_x = 0, pivot_y = 0;
        float start_angle = 0.0f, end_angle = 0.0f;

        if (id == RouteID::S_to_E) { pivot_x = 8; pivot_y = 8; start_angle = M_PI; end_angle = M_PI*1.5f; }
        if (id == RouteID::E_to_N) { pivot_x = 8; pivot_y = -8; start_angle = M_PI/2.0f; end_angle = M_PI; }
        if (id == RouteID::N_to_W) { pivot_x = -8; pivot_y = -8; start_angle = 0.0f; end_angle = M_PI/2.0f; }
        if (id == RouteID::W_to_S) { pivot_x = -8; pivot_y = 8; start_angle = M_PI*1.5f; end_angle = M_PI*2.0f; }

        float radius = 6.0f; // Distance from corner to the inner lane
        int ticks_for_turn = 10; // ~9.4 meters of arc length at 1m/tick
        
        int last_grid_x = -99, last_grid_y = -99; // Track distinct blocks

        for (int tick = 0; tick <= ticks_for_turn; tick++) {
            float progress = (float)tick / ticks_for_turn;
            float current_angle = start_angle + (end_angle - start_angle) * progress;
            
            float exact_x = pivot_x + radius * std::cos(current_angle);
            float exact_y = pivot_y + radius * std::sin(current_angle);
            
            int grid_x = std::round(exact_x);
            int grid_y = std::round(exact_y);

            // Drop a waypoint every ~2 ticks
            if (tick % 2 == 0 && tmpl.num_waypoints < MAX_WAYPOINTS) {
                tmpl.waypoints[tmpl.num_waypoints++] = {exact_x, exact_y};
            }

            // Only reserve a new block if the car has physically moved into a new one
            if (grid_x != last_grid_x || grid_y != last_grid_y) {
                addSweptVolume(tmpl, grid_x, grid_y, tick);
                last_grid_x = grid_x;
                last_grid_y = grid_y;
            }
        }
        routeTemplates[static_cast<int>(id)] = tmpl;
    }

    // =========================================================
    // 3. GENERATE LEFT TURNS (Wide radius: 10 meters)
    // =========================================================
    RouteID left_routes[4] = {RouteID::S_to_W, RouteID::W_to_N, RouteID::N_to_E, RouteID::E_to_S};
    
    for (RouteID id : left_routes) {
        RouteTemplate tmpl;
        tmpl.route_id = id;
        
        // Pivot is the far opposite corner
        int pivot_x = 0, pivot_y = 0;
        float start_angle = 0.0f, end_angle = 0.0f;

        if (id == RouteID::S_to_W) { pivot_x = -8; pivot_y = 8; start_angle = 0.0f; end_angle = -M_PI/2.0f; }
        if (id == RouteID::W_to_N) { pivot_x = -8; pivot_y = -8; start_angle = M_PI/2.0f; end_angle = 0.0f; }
        if (id == RouteID::N_to_E) { pivot_x = 8; pivot_y = -8; start_angle = M_PI; end_angle = M_PI/2.0f; }
        if (id == RouteID::E_to_S) { pivot_x = 8; pivot_y = 8; start_angle = M_PI*1.5f; end_angle = M_PI; }

        float radius = 10.0f; // Distance crossing the entire intersection
        int ticks_for_turn = 16; // ~15.7 meters of arc length at 1m/tick
        
        int last_grid_x = -99, last_grid_y = -99;

        for (int tick = 0; tick <= ticks_for_turn; tick++) {
            float progress = (float)tick / ticks_for_turn;
            float current_angle = start_angle + (end_angle - start_angle) * progress;
            
            float exact_x = pivot_x + radius * std::cos(current_angle);
            float exact_y = pivot_y + radius * std::sin(current_angle);
            
            int grid_x = std::round(exact_x);
            int grid_y = std::round(exact_y);

            if (tick % 2 == 0 && tmpl.num_waypoints < MAX_WAYPOINTS) {
                tmpl.waypoints[tmpl.num_waypoints++] = {exact_x, exact_y};
            }

            if (grid_x != last_grid_x || grid_y != last_grid_y) {
                addSweptVolume(tmpl, grid_x, grid_y, tick);
                last_grid_x = grid_x;
                last_grid_y = grid_y;
            }
        }
        routeTemplates[static_cast<int>(id)] = tmpl;
    }
}

bool trafficHandler::onTelemetryUpdate(telemetryPayload payload)
{
    //Check if the payload for the telemetry data we are recieving is for a car that we actually know of
    
    //Since this is an unordered map the code looks a bit weird
    //However all that going on is if the unorderd map doesnt contain the car ID .find returns activeCars.end() and so we simply check that it 
    //didnt do so, if it didnt then we know the ID exists in our unordered map
    if(activeCars.find(payload.car_id) !=  activeCars.end())
    {

        if(carDone(payload)) { return true; };

        //To compute if the car is in the correct spot we need to compute where it should be now given its start time

        //Get car whos payload we recieved
        ActiveCar& found_car = activeCars[payload.car_id];
        //Extract the cars path template
        RouteTemplate& route_car = routeTemplates[static_cast<int>(found_car.route_id)];


        //How long has passed since the car was given a path
        int elapsedTimeSinceStart = payload.timeStamp - found_car.start_tick; 

        //Where the next waypoint should be
        int expected_wayPoint_index = elapsedTimeSinceStart / 2;
        if(expected_wayPoint_index >= route_car.num_waypoints) 
        { 
            expected_wayPoint_index = route_car.num_waypoints - 1; 
        }

        //Where the car should be
        float expected_x = route_car.waypoints[expected_wayPoint_index].x;
        float expected_y = route_car.waypoints[expected_wayPoint_index].y;

        float delta_x = payload.current_x - expected_x;
        float delta_y = payload.current_y - expected_y;

        float distance_difference = std::sqrt(delta_x*delta_x + delta_y*delta_y);

        if(distance_difference > 2.5f)
        {
            return false;
        }

        return true;


    }
    else{ return false; }
    
}

void trafficHandler::onRouteRequest(routeRequest request)
{
    // Grab the lock. If the tick() timer is currently reading the queue, 
    // this line will pause and wait for it to finish.
    std::lock_guard<std::mutex> lock(queue_mutex);
    
    // Safely push the data
    waitingQueue.push(request);
}

bool trafficHandler::handleRequestQueue(Waypoint* out_waypoints, uint8_t& out_num_waypoints) {

    std::lock_guard<std::mutex> lock(queue_mutex);

    if (!waitingQueue.empty()) {
        routeRequest latest_req = waitingQueue.front();
        waitingQueue.pop();

        int route_index = static_cast<int>(latest_req.requested_route);
        RouteTemplate& car_template = routeTemplates[route_index];

        if (checkAndLockGrid(latest_req.car_id, car_template, out_waypoints, out_num_waypoints)) {
            ActiveCar new_car = { latest_req.car_id, latest_req.requested_route, current_system_tick };
            activeCars[latest_req.car_id] = new_car;
            return true;
        }
        else {
            
            return false;
        }
    }

    return false;
}

bool trafficHandler::checkWatchdogTimeouts() {

    //Iterate through the list of active cars
    for (auto it = activeCars.begin(); it != activeCars.end(); ++it) {
        ActiveCar& car = it->second;
        RouteTemplate& tmpl = routeTemplates[static_cast<int>(car.route_id)];
        
        // What is the maximum number of ticks this should take
        int max_route_ticks = tmpl.required_blocks[tmpl.num_blocks - 1].t_offset;
        
        // Have a 2 second tolerence window
        int hard_timeout_limit = max_route_ticks + 20; 
        
        // Check if more time than the tolerance has passed
        if (current_system_tick - car.start_tick > hard_timeout_limit) {
            return false;
        }
        
    }

    //If for loop is passed then all cars are good we simply 
    //This also handles the case of if the active cars are empty
    return true;
}

bool trafficHandler::checkAndLockGrid(int car_id, const RouteTemplate& request_template,Waypoint* out_waypoints, uint8_t& out_num_waypoints) {

    // First pass — check all blocks are free
    for (int i = 0; i < request_template.num_blocks; i++) {
        unsigned int wrappedIndex = (current_system_tick + request_template.required_blocks[i].t_offset) % 50;

        if (!grid.isFree(request_template.required_blocks[i].grid_x,
                         request_template.required_blocks[i].grid_y,
                         wrappedIndex)) {
            return false;
        }
    }

    // Second pass — path is clear, reserve all blocks
    for (int i = 0; i < request_template.num_blocks; i++) {
        unsigned int wrappedIndex = (current_system_tick + request_template.required_blocks[i].t_offset) % 50;
        grid.reserveBlock(request_template.required_blocks[i].grid_x,
                          request_template.required_blocks[i].grid_y,
                          wrappedIndex, car_id);
    }

    // Copy waypoints into output — speed calculation to be added later
    out_num_waypoints = request_template.num_waypoints;
    for (int i = 0; i < request_template.num_waypoints; i++) {
        out_waypoints[i] = request_template.waypoints[i];
    }

    return true;
}

//List is everything which is done within 1 tick of the clock
void trafficHandler::tick() {
    //One increment of time has passed
    current_system_tick++;
    //Clear the present slice of the Tensor
    grid.clearTimeSlice(current_system_tick % 50);

    //Check new arrival buffer to see if anything new has come through
    for (uint8_t i = 0; i < 3; i++) {
        Waypoint waypoints[MAX_WAYPOINTS];
        uint8_t num_waypoints = 0;

        if (handleRequestQueue(waypoints, num_waypoints)) {
            // PUSH_PATH_COMMAND(waypoints, num_waypoints)
        }
        else {
            // PUSH_DENY_COMMAND
        }
    }


    if(!checkWatchdogTimeouts()) { 
        //PUSH_STOP_TO_ALL_CARS
    } 
}