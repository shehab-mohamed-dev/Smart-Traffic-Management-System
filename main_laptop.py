# main_laptop.py
import pygame
import sys
from config import *
from vehicle import Car
from intersection_gui import draw_environment
from traffic_brain import TrafficBrain  # <--- NEW IMPORT

def main():
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Smart Adaptive Grid - Phase 2 (The Brain)")
    clock = pygame.time.Clock()

    # Instantiate our Brain
    brain = TrafficBrain()  # <--- NEW BRAIN OBJECT

    # Create cars (Car 2 is slightly closer so it enters first)
    car1 = Car(car_id=1, x=0, y=HEIGHT//2 + 10, direction="E", color=RED)
    car2 = Car(car_id=2, x=WIDTH//2 - 40, y=HEIGHT - 200, direction="N", color=BLUE)
    
    all_cars =[car1, car2]

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()

        # --- AI LOGIC ---
        # The brain looks at all cars and changes their state BEFORE they move
        brain.manage_traffic(all_cars)  # <--- THE MAGIC HAPPENS HERE

        # --- PHYSICS ---
        for car in all_cars:
            car.move()

        # --- GRAPHICS ---
        draw_environment(screen)
        for car in all_cars:
            car.draw(screen)

        pygame.display.flip()
        clock.tick(FPS)

if __name__ == "__main__":
    main()