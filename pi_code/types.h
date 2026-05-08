#pragma once
#include "traffic_handler/spaceTimeGrid.h"
#include <array>
#include <string>
#include <cstdint>

//system limits
const int MAX_TEMPLATE_BLOCKS = 120;
const int MAX_WAYPOINTS = 30;

//1 Byte Always
enum class carMessage : uint8_t {
    PATH_REQUEST = 0,
    UPDATE_POSITION = 1,
    ROUTE_COMPLETE = 2,
};

//1 Byte Always
enum class handlerCommand : uint8_t {
    ASSIGN_ROUTE = 0,
    DENY_ROUTE = 1,
    EMERGENCY_STOP = 2,
};

// Enums for routing
// Unknown is for debugging
// 1 Byte Always
enum class RouteID: uint8_t {
    N_to_E = 0, 
    N_to_S = 1, 
    N_to_W = 2,
    S_to_E = 3,
    S_to_N = 4,
    S_to_W = 5,
    E_to_N = 6,
    E_to_S = 7,
    E_to_W = 8,
    W_to_N = 9,
    W_to_S = 10,
    W_to_E = 11,
    UNKNOWN = 12,
};


// A way point is an X & Y cordinate meant to be used to guide the car 
struct Waypoint {
    float x; // 4 Bytes (Need to check how to enforce this always)
    float y; // 4 Bytes (Need to check how to enforce this always)
    float speed; // 4 Bytes (Need to check how to enforce this always)
};

// The discrete grid offsets used internally by the SpaceTimeGrid
struct TimeBlock {
    int grid_x;  //
    int grid_y;  //
    uint8_t t_offset; //1 Bytes 
};



// The Master Template loaded at boot (Zero Dynamic Allocation)
struct RouteTemplate {
    RouteID route_id; 
    
    std::array<TimeBlock, MAX_TEMPLATE_BLOCKS> required_blocks;
    unsigned int num_blocks = 0; 
    
    // Fixed array for Python coordinates, plus an integer tracking how many are actually used
    std::array<Waypoint, MAX_WAYPOINTS> waypoints;        
    unsigned int num_waypoints = 0; 
};

// Struct for a car which has been onboarded and given a path
struct ActiveCar {
    uint32_t car_id;
    RouteID route_id;
    uint32_t start_tick;
};


// PI -> CAR

//Message sent from the traffic handler in the pi to the cars
struct __attribute__((packed)) path_command {
    uint32_t car_id;           // 4 bytes: Which car this is for
    handlerCommand command;    // 1 byte: What the car should do
    uint8_t num_waypoints;     // 1 byte: How many waypoints in the array are actually valid
    std::array<Waypoint, MAX_WAYPOINTS> waypoints; // 30 * 12 bytes = 360 bytes
};

struct __attribute__((packed)) stop_command {
    uint32_t car_id;
    handlerCommand command;
};


//CAR -> PI
//Messages sent by the cars to the traffic handler in the pi


// Represents the incoming request before it gets approved
struct __attribute__((packed)) routeRequest {
    carMessage type; //1 byte
    uint32_t car_id; //4 bytes
    RouteID requested_route; //1 byte
};  

// Car updating pi about its current position
struct __attribute__((packed)) telemetryPayload {
    carMessage type; // 1 byte
    uint32_t car_id; // 4 bytes
    float current_x; // 4 bytes 
    float current_y; // 4 bytes
    uint32_t timeStamp; //4 bytes
};

// Car saying it has reached it destination
struct __attribute__((packed)) routeComplete {
    carMessage type; // 1 byte
    uint32_t car_id; // 4 bytes
};



// HELPER FUNCTIONS

// Helper function to translate Enum to String 
// (ONLY USE THIS DURING SERIALIZATION FOR SENDING WIRELESSLY)
inline std::string routeToString(RouteID route) {
    switch(route) {
        case RouteID::N_to_E: return "N_to_E";
        case RouteID::N_to_S: return "N_to_S";
        case RouteID::N_to_W: return "N_to_W";
        case RouteID::S_to_E: return "S_to_E";
        case RouteID::S_to_N: return "S_to_N";
        case RouteID::S_to_W: return "S_to_W";
        case RouteID::E_to_N: return "E_to_N";
        case RouteID::E_to_S: return "E_to_S";
        case RouteID::E_to_W: return "E_to_W";
        case RouteID::W_to_N: return "W_to_N";
        case RouteID::W_to_S: return "W_to_S";
        case RouteID::W_to_E: return "W_to_E";
        default: return "UNKNOWN";
    }
}



// Helper function to translate incoming JSON Strings to Enums
// (Crucial for parsing the laptop's requests)
inline RouteID stringToRoute(const std::string& route_str) {
    if (route_str == "N_to_E") return RouteID::N_to_E;
    if (route_str == "N_to_S") return RouteID::N_to_S;
    if (route_str == "N_to_W") return RouteID::N_to_W;
    if (route_str == "S_to_E") return RouteID::S_to_E;
    if (route_str == "S_to_N") return RouteID::S_to_N;
    if (route_str == "S_to_W") return RouteID::S_to_W;
    if (route_str == "E_to_N") return RouteID::E_to_N;
    if (route_str == "E_to_S") return RouteID::E_to_S;
    if (route_str == "E_to_W") return RouteID::E_to_W;
    if (route_str == "W_to_N") return RouteID::W_to_N;
    if (route_str == "W_to_S") return RouteID::W_to_S;
    if (route_str == "W_to_E") return RouteID::W_to_E;
    return RouteID::UNKNOWN;
}