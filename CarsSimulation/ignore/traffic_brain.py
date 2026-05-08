# traffic_brain.py
from config import *

class TrafficBrain:
    def __init__(self):
        pass

    def get_required_tiles(self, start_lane, end_lane):
        # --- GRANULAR TILE RESERVATION LOGIC ---
        # This is the advanced logic that correctly maps paths to tiles.
        if start_lane == "E" and end_lane == "E": return ["BL", "BR"]
        if start_lane == "W" and end_lane == "W": return ["TR", "TL"]
        if start_lane == "N" and end_lane == "N": return ["BL", "TL"]
        if start_lane == "S" and end_lane == "S": return ["TR", "BR"]
        
        # Left Turns
        if start_lane == "W" and end_lane == "S": return ["TR", "BR"]
        if start_lane == "E" and end_lane == "N": return ["BL", "TL"]
        if start_lane == "N" and end_lane == "E": return ["BL", "BR"]
        if start_lane == "S" and end_lane == "W": return ["TR", "TL"]
        
        return []

    def manage_traffic(self, cars_data):
        commands = {}
        reserved_tiles = set()
        
        cars_data.sort(key=lambda c: (-c["priority"], abs(c["x"] - 400) + abs(c["y"] - 400)))

        int_left, int_right = WIDTH // 2 - GRID_SIZE, WIDTH // 2 + GRID_SIZE
        int_top, int_bottom = HEIGHT // 2 - GRID_SIZE, HEIGHT // 2 + GRID_SIZE

        for car in cars_data:
            c_id, cx, cy, csize = car["car_id"], car["x"], car["y"], car["size"]
            start_lane, end_lane = car["start_lane"], car["end_lane"]
            
            # --- BUG FIX 1 (MOST IMPORTANT): IGNORE CARS THAT HAVE PASSED ---
            passed = False
            if end_lane == "E" and cx > int_right: passed = True
            elif end_lane == "W" and cx + csize < int_left: passed = True
            elif end_lane == "N" and cy + csize < int_top: passed = True
            elif end_lane == "S" and cy > int_bottom: passed = True
            
            if passed:
                commands[c_id] = "MOVING"
                continue

            in_intersection = (int_left <= cx + csize and cx <= int_right and
                               int_top <= cy + csize and cy <= int_bottom)
            
            # Define "at the stop line" for more natural stopping
            at_stop_line = False
            if start_lane == "E" and (int_left - 15 <= cx + csize <= int_left + 5): at_stop_line = True
            elif start_lane == "W" and (int_right - 5 <= cx <= int_right + 15): at_stop_line = True
            elif start_lane == "N" and (int_bottom - 5 <= cy <= int_bottom + 15): at_stop_line = True
            elif start_lane == "S" and (int_top - 15 <= cy + csize <= int_top + 5): at_stop_line = True

            if car["fail_state"]:
                commands[c_id] = "BROKEN"
                if in_intersection:
                    for t in self.get_required_tiles(start_lane, end_lane): reserved_tiles.add(t)
                continue

            req_tiles = self.get_required_tiles(start_lane, end_lane)
            conflict = any(tile in reserved_tiles for tile in req_tiles)

            if in_intersection:
                commands[c_id] = "MOVING"
                for t in req_tiles: reserved_tiles.add(t) # Continue to reserve tiles while inside
            elif at_stop_line and conflict:
                commands[c_id] = "STOPPED"
            else:
                commands[c_id] = "MOVING"
                # If we are clear to move and about to enter, reserve our tiles
                if not conflict and at_stop_line:
                    for t in req_tiles: reserved_tiles.add(t)

        return commands