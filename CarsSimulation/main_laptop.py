# main_laptop.py
import pygame
import sys
import random
from config import *
from vehicle import Car
from intersection_gui import draw_environment
from routes import ROUTES, ROUTES_FROM


class SimTrafficHandler:
    """
    Python simulation of the C++ trafficHandler.

    Mirrors the core behaviour:
      - onRouteRequest()  ->  request_route()  :  car joins the waiting queue
      - tick()            ->  tick()           :  if intersection is clear,
                                                  release the next queued car
    The intersection is treated as busy whenever any active car is physically
    inside the central road-crossing box.
    """

    INTERSECTION = pygame.Rect(CX - GRID_SIZE, CY - GRID_SIZE,
                               GRID_SIZE * 2,  GRID_SIZE * 2)

    def __init__(self):
        self.waiting = []   # cars queued at hold lines
        self.active  = []   # cars currently moving through the intersection

    def request_route(self, car):
        """Equivalent to trafficHandler::onRouteRequest."""
        self.waiting.append(car)

    def tick(self):
        """Equivalent to trafficHandler::tick."""

        # Clean up cars that have finished their route
        self.active = [c for c in self.active if not c.done]

        # Check whether any active car is inside the intersection box
        intersection_busy = any(
            self.INTERSECTION.collidepoint(int(c.x), int(c.y))
            for c in self.active
        )

        # If the intersection is clear, release the next waiting car (FIFO queue)
        if not intersection_busy and self.waiting:
            next_car          = self.waiting.pop(0)
            next_car.released = True
            self.active.append(next_car)

        # Advance all cars — waiting cars move up to their hold line,
        # released cars move freely through the full route
        for car in self.active + self.waiting:
            car.move()

    def all_cars(self):
        return self.waiting + self.active


def main():
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Intersection Traffic Controller Simulation")
    clock = pygame.time.Clock()

    handler        = SimTrafficHandler()
    next_car_id    = 1
    spawn_timer    = 0
    SPAWN_INTERVAL = 80   # frames between each new car

    COLORS = [RED, BLUE, GREEN, YELLOW, PURPLE, ORANGE]

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()

        # --- Spawn a new car on a random route ---
        spawn_timer += 1
        if spawn_timer >= SPAWN_INTERVAL:
            spawn_timer  = 0
            direction    = random.choice(["N", "S", "E", "W"])
            route_name   = random.choice(ROUTES_FROM[direction])
            entry, wps   = ROUTES[route_name]
            color        = COLORS[(next_car_id - 1) % len(COLORS)]
            car          = Car(next_car_id, route_name, entry, wps, color)
            handler.request_route(car)
            next_car_id += 1

        # --- Run the traffic handler for this frame ---
        handler.tick()

        # --- Draw ---
        draw_environment(screen)
        for car in handler.all_cars():
            car.draw(screen)

        pygame.display.flip()
        clock.tick(FPS)


if __name__ == "__main__":
    main()