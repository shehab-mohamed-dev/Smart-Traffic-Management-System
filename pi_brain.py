# pi_brain.py
import socket
import json
from traffic_brain import TrafficBrain

def run_server():
    brain = TrafficBrain()
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.bind(('127.0.0.1', 65432)) 
    server.listen()
    print("🚦 Virtual Raspberry Pi Brain is listening on port 65432...")
    
    while True:
        print("Waiting for laptop to connect...")
        conn, addr = server.accept()
        print(f"✅ Laptop connected from {addr}")
        
        with conn:
            while True:
                try:
                    data = conn.recv(4096)
                    if not data:
                        print("❌ Laptop disconnected gracefully.")
                        break 
                    
                    cars_data = json.loads(data.decode('utf-8'))
                    commands = brain.manage_traffic(cars_data)
                    conn.sendall(json.dumps(commands).encode('utf-8'))
                
                except (ConnectionResetError, BrokenPipeError):
                    print("❌ Laptop connection lost unexpectedly.")
                    break
                except json.JSONDecodeError:
                    pass

if __name__ == "__main__":
    run_server()