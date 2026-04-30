# laptop_sim.py
import pygame
import sys
import socket
import json
import random
from config import *
from vehicle import Car
from intersection_gui import draw_environment

def reset_simulation():
    return []

def spawn_random_car(car_list):
    new_id = (len(car_list) + 1) * random.randint(10, 1000)
    choice = random.randint(1, 4)
    turn_chance, fail_chance, priority_chance = random.random(), random.random(), random.random()

    is_broken = fail_chance > 0.95
    timer = random.randint(100, 300) if is_broken else 0

    is_ambulance = priority_chance > 0.85 
    priority = 2 if is_ambulance else 0
    color = (random.randint(50,200), random.randint(100,255), random.randint(50,200))
    car_args = { "car_id": new_id, "color": color, "priority": priority, "fail_timer": timer }

    if choice == 1:
        end_lane = "N" if turn_chance > 0.7 else "E"
        new_car = Car(x=0, y=HEIGHT//2 + 10, direction="E", start_lane="E", end_lane=end_lane, **car_args)
    elif choice == 2:
        end_lane = "S" if turn_chance > 0.7 else "W"
        new_car = Car(x=WIDTH, y=HEIGHT//2 - 40, direction="W", start_lane="W", end_lane=end_lane, **car_args)
    elif choice == 3:
        end_lane = "E" if turn_chance > 0.7 else "N"
        new_car = Car(x=WIDTH//2 - 40, y=HEIGHT, direction="N", start_lane="N", end_lane=end_lane, **car_args)
    else:
        end_lane = "W" if turn_chance > 0.7 else "S"
        new_car = Car(x=WIDTH//2 + 10, y=0, direction="S", start_lane="S", end_lane=end_lane, **car_args)
    car_list.append(new_car)

def main():
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Smart Adaptive Grid - PRESENTATION MODE")
    clock = pygame.time.Clock()
    font = pygame.font.SysFont(None, 24)

    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try: client.connect(('10.31.65.50', 65432))
    except ConnectionRefusedError: print("❌ ERROR: Run pi_brain.py!"); sys.exit()

    all_cars = reset_simulation()
    for _ in range(5): spawn_random_car(all_cars)

    # --- NEW: PRESENTATION VARIABLES ---
    show_grid_paths = False
    current_fps = 30

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                client.close(); pygame.quit(); sys.exit()
            
            # --- NEW: KEYBOARD CONTROLS ---
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_r: all_cars = reset_simulation()
                if event.key == pygame.K_SPACE: spawn_random_car(all_cars)
                if event.key == pygame.K_g: show_grid_paths = not show_grid_paths # Toggle G
                if event.key == pygame.K_UP: current_fps = min(120, current_fps + 15) # Faster
                if event.key == pygame.K_DOWN: current_fps = max(15, current_fps - 15) # Slower
            
            if event.type == pygame.MOUSEBUTTONDOWN:
                pos = pygame.mouse.get_pos()
                for car in all_cars:
                    if pygame.Rect(car.x, car.y, car.size, car.size).collidepoint(pos) and car.fail_state:
                        all_cars.remove(car)
                        print(f"TOW TRUCK: Removed broken car!")
                        break

        all_cars = [c for c in all_cars if -50 < c.x < WIDTH + 50 and -50 < c.y < HEIGHT + 50]

        cars_data = [
            {"car_id": c.car_id, "x": c.x, "y": c.y, "direction": c.direction, 
             "size": c.size, "priority": c.priority, "fail_state": c.fail_state,
             "start_lane": c.start_lane, "end_lane": c.end_lane} for c in all_cars
        ]
        
        try:
            payload = json.dumps(cars_data) + '\n'
            client.sendall(payload.encode('utf-8'))
            data = client.recv(8192)
            if data:
                buffer = data.decode('utf-8')
                while '\n' in buffer:
                    message, buffer = buffer.split('\n', 1)
                    commands = json.loads(message)
                    for car in all_cars:
                        if str(car.car_id) in commands: car.state = commands[str(car.car_id)]
        except: break

        # --- UPDATE DRAW CALLS ---
        draw_environment(screen, show_grid_paths)
        for car in all_cars:
            car.update(all_cars)
            car.draw(screen, show_grid_paths)

        # --- UPDATE UI TEXT ---
        ui_text = [ 
            f"Speed (FPS): {current_fps} (UP/DOWN to change)",
            "Press SPACE to Spawn Car | R to Reset", 
            "Press G to Toggle AI Paths",
            "Click Broken Car to Tow it!" 
        ]
        for i, line in enumerate(ui_text):
            screen.blit(font.render(line, True, WHITE), (10, 10 + i * 20))

        pygame.display.flip()
        clock.tick(current_fps) # Run at the variable speed

    client.close(); pygame.quit()

if __name__ == "__main__":
    main()