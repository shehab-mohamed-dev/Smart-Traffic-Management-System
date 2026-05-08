# routes.py
# Mirrors the C++ loadTemplates() logic to produce screen-space waypoints
# for all 12 RouteIDs. Each route includes an off-screen approach and exit.
import math
from config import WIDTH, HEIGHT, SCALE, CX, CY

PI = math.pi

def _gs(gx, gy):
    """Convert grid coordinates (centered at 0,0) to screen pixels."""
    return (CX + int(gx * SCALE), CY + int(gy * SCALE))

def _straight(sx, sy, dx, dy, steps=16):
    """Waypoints for a straight route, sampled every 2 ticks."""
    return [_gs(sx + dx * t, sy + dy * t) for t in range(0, steps + 1, 2)]

def _turn(px, py, radius, a0, a1, ticks):
    """Waypoints for a curved route, sampled every 2 ticks."""
    pts = []
    for t in range(0, ticks + 1, 2):
        angle = a0 + (a1 - a0) * (t / ticks)
        pts.append(_gs(px + radius * math.cos(angle),
                       py + radius * math.sin(angle)))
    return pts

def _add_approach_and_exit(name, entry, waypoints):
    """Prepend an off-screen spawn point and append an off-screen exit point."""
    fx, fy  = waypoints[0]
    lx, ly  = waypoints[-1]
    exit_dir = name.split("_to_")[1]

    spawn = {"S": (fx, HEIGHT + 40), "N": (fx,        -40),
             "E": (WIDTH + 40,  fy), "W": (-40,         fy)}[entry]

    exit_ = {"N": (lx,        -40), "S": (lx, HEIGHT + 40),
             "E": (WIDTH + 40,  ly), "W": (-40,         ly)}[exit_dir]

    return [spawn] + waypoints + [exit_]


_RAW_ROUTES = {
    # --- Straight routes ---
    "S_to_N": ("S", _straight( 2,  8,  0, -1)),
    "N_to_S": ("N", _straight(-2, -8,  0,  1)),
    "W_to_E": ("W", _straight(-8,  2,  1,  0)),
    "E_to_W": ("E", _straight( 8, -2, -1,  0)),

    # --- Right turns (tight radius: 6, 10 ticks) ---
    "S_to_E": ("S", _turn( 8,  8, 6, PI,        PI * 1.5, 10)),
    "E_to_N": ("E", _turn( 8, -8, 6, PI / 2,    PI,       10)),
    "N_to_W": ("N", _turn(-8, -8, 6, 0,          PI / 2,  10)),
    "W_to_S": ("W", _turn(-8,  8, 6, PI * 1.5,   PI * 2,  10)),

    # --- Left turns (wide radius: 10, 16 ticks) ---
    "S_to_W": ("S", _turn(-8,  8, 10, 0,          -PI / 2, 16)),
    "W_to_N": ("W", _turn(-8, -8, 10, PI / 2,      0,      16)),
    "N_to_E": ("N", _turn( 8, -8, 10, PI,           PI / 2, 16)),
    "E_to_S": ("E", _turn( 8,  8, 10, PI * 1.5,     PI,    16)),
}

# Final dict: route_name -> (entry_direction, full_waypoint_list)
ROUTES = {
    name: (entry, _add_approach_and_exit(name, entry, wps))
    for name, (entry, wps) in _RAW_ROUTES.items()
}

# Valid routes per entry direction — mirrors the RouteID enum groupings
ROUTES_FROM = {
    "N": ["N_to_S", "N_to_E", "N_to_W"],
    "S": ["S_to_N", "S_to_E", "S_to_W"],
    "E": ["E_to_W", "E_to_N", "E_to_S"],
    "W": ["W_to_E", "W_to_N", "W_to_S"],
}