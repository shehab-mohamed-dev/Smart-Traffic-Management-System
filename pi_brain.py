# pi_brain.py
import socket
import json
import time
import csv
import requests
import threading # <--- NEW IMPORT FOR MULTITHREADING
from traffic_brain import TrafficBrain

# ==========================================
# 🔴 PASTE YOUR FIREBASE URL HERE 🔴
FIREBASE_URL = "https://smarttraffic-cps-default-rtdb.firebaseio.com/live_stats.json"
# ==========================================

# --- NEW BACKGROUND THREAD FUNCTION ---
def push_to_firebase_background(data):
    try:
        requests.put(FIREBASE_URL, json=data, timeout=2)
        # print("☁️ Successfully pushed to Firebase!") # Optional: comment out if it clutters the terminal
    except Exception as e:
        print(f"⚠️ Could not connect to Firebase: {e}")

class StatisticsHandler:
    def __init__(self):
        self.total_throughput, self.emergency_interventions, self.breakdowns, self.current_density = 0, 0, 0, 0
        self.total_delay_time = 0.0
        self.last_update_time = time.time()
        self.previous_coords = {} 
        self.csv_file = "traffic_stats.csv"
        with open(self.csv_file, mode='w', newline='') as file:
            csv.writer(file).writerow(["Timestamp", "Density", "Throughput", "Emergencies", "Breakdowns", "Avg Delay (s)"])

    def update_stats(self, cars_data):
        current_time = time.time()
        time_delta = current_time - self.last_update_time
        self.last_update_time = current_time
        self.current_density = len(cars_data)
        current_emergencies, current_breakdowns = 0, 0

        for car in cars_data:
            c_id = str(car["car_id"])
            curr_x, curr_y = car["x"], car["y"]
            
            if car["priority"] == 2: current_emergencies += 1
            if car["fail_state"]: current_breakdowns += 1
                
            if c_id in self.previous_coords:
                prev_x, prev_y = self.previous_coords[c_id]
                if abs(curr_x - prev_x) < 0.1 and abs(curr_y - prev_y) < 0.1 and not car["fail_state"]:
                    self.total_delay_time += time_delta
            self.previous_coords[c_id] = (curr_x, curr_y)

        current_ids = {str(c["car_id"]) for c in cars_data}
        self.previous_coords = {k: v for k, v in self.previous_coords.items() if k in current_ids}
        self.emergency_interventions, self.breakdowns = current_emergencies, current_breakdowns

    def save_to_csv_and_cloud(self):
        avg_delay = round(self.total_delay_time / self.total_throughput, 2) if self.total_throughput > 0 else 0
        timestamp = time.strftime("%H:%M:%S")
        
        with open(self.csv_file, mode='a', newline='') as file:
            csv.writer(file).writerow([timestamp, self.current_density, self.total_throughput, 
                                       self.emergency_interventions, self.breakdowns, avg_delay])
        print(f"📊 STATS: Density={self.current_density} | Emergencies={self.emergency_interventions} | Avg Delay={avg_delay}s")

        cloud_data = {
            "timestamp": timestamp,
            "density": self.current_density,
            "throughput": self.total_throughput,
            "emergencies": self.emergency_interventions,
            "breakdowns": self.breakdowns,
            "avg_delay": avg_delay
        }
        
        # --- THE FIX: RUN FIREBASE UPLOAD IN A BACKGROUND THREAD ---
        threading.Thread(target=push_to_firebase_background, args=(cloud_data,), daemon=True).start()


def run_server():
    brain = TrafficBrain()
    stats = StatisticsHandler()
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.bind(('127.0.0.1', 65432)) 
    server.listen()
    print("🚦 Virtual Raspberry Pi Brain is listening on port 65432...")
    last_csv_save = time.time()
    known_cars = set() 
    
    while True:
        conn, addr = server.accept()
        print(f"✅ Laptop connected from {addr}")
        buffer = ""
        with conn:
            while True:
                try:
                    data = conn.recv(8192)
                    if not data: break 
                    buffer += data.decode('utf-8')
                    
                    while '\n' in buffer:
                        message, buffer = buffer.split('\n', 1)
                        cars_data = json.loads(message)
                        
                        current_car_ids = {c["car_id"] for c in cars_data}
                        for old_car in known_cars:
                            if old_car not in current_car_ids: stats.total_throughput += 1 
                        known_cars = current_car_ids

                        commands = brain.manage_traffic(cars_data)
                        stats.update_stats(cars_data)
                        
                        if time.time() - last_csv_save > 5:
                            stats.save_to_csv_and_cloud()
                            last_csv_save = time.time()
                        
                        response = json.dumps(commands) + '\n'
                        conn.sendall(response.encode('utf-8'))
                
                except (ConnectionResetError, BrokenPipeError): break
                except json.JSONDecodeError: pass

if __name__ == "__main__":
    run_server()