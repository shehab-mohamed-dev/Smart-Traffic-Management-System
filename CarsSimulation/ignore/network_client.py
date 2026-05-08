# network_client.py
import socket
import struct
import threading

class CarClient:
    def __init__(self, car_id, route_id_str):
        self.car_id = car_id
        self.route_enum = self.get_route_enum(route_id_str)
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        
        self.waypoints = []
        self.has_path = False
        self.connected = False

    def get_route_enum(self, route_str):
        mapping = {
            "N_to_E": 0, "N_to_S": 1, "N_to_W": 2,
            "S_to_E": 3, "S_to_N": 4, "S_to_W": 5,
            "E_to_N": 6, "E_to_S": 7, "E_to_W": 8,
            "W_to_N": 9, "W_to_S": 10, "W_to_E": 11
        }
        return mapping.get(route_str, 12)

    def connect_and_request(self, ip, port):
        try:
            self.sock.connect((ip, port))
            self.connected = True
            
            # 1. C++ commsHandler reads a 1-byte message type first
            self.sock.sendall(struct.pack('=B', 0)) # 0 = PATH_REQUEST
            
            # 2. C++ then reads the full 12-byte routeRequest struct:
            # type (1 byte), padding (3 bytes), car_id (4 bytes), route (1 byte), padding (3 bytes)
            req_data = struct.pack('<B 3x I B 3x', 0, self.car_id, self.route_enum)
            self.sock.sendall(req_data)

            # Start a background thread to wait for the path_command to avoid freezing GUI
            threading.Thread(target=self.listen_for_path, daemon=True).start()
            
        except Exception as e:
            print(f"Car {self.car_id} failed to connect to Pi: {e}")

    def listen_for_path(self):
        try:
            # C++ path_command struct size is 368 bytes:
            # car_id(4) + command(1) + num_waypoints(1) + padding(2) + 30 * (x(4), y(4), speed(4))
            data = self.sock.recv(368)
            
            if len(data) == 368:
                # Unpack the 8-byte header
                car_id, cmd, num_wp = struct.unpack('<I B B 2x', data[:8])
                
                if cmd == 0: # 0 = ASSIGN_ROUTE
                    wps = []
                    offset = 8
                    for _ in range(num_wp):
                        x, y, speed = struct.unpack('<f f f', data[offset:offset+12])
                        wps.append((x, y, speed))
                        offset += 12
                    
                    self.waypoints = wps
                    self.has_path = True
                    print(f"Car {car_id} received route with {num_wp} waypoints.")
                else:
                    print(f"Car {car_id} was denied a route.")
                    
        except Exception as e:
            print(f"Error receiving path for car {self.car_id}: {e}")