import pygame
import sys

# --- CONFIGURATION ---
WIDTH, HEIGHT = 800, 800
GRID_SIZE = 50  # Size of each square tile
FPS = 30

# Colors
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
GRAY = (50, 50, 50)
ROAD_COLOR = (100, 100, 100)
RED = (255, 0, 0)
BLUE = (0, 100, 255)

# --- CAR CLASS ---
class Car:
    def __init__(self, x, y, direction, color):
        self.x = x
        self.y = y
        self.direction = direction
        self.speed = 3  # Pixels per frame
        self.color = color
        self.size = 30  # Slightly smaller than the 50px grid tile

    def move(self):
        # Move the car based on its direction
        if self.direction == "E": # East (Right)
            self.x += self.speed
        elif self.direction == "W": # West (Left)
            self.x -= self.speed
        elif self.direction == "N": # North (Up)
            self.y -= self.speed
        elif self.direction == "S": # South (Down)
            self.y += self.speed

    def draw(self, screen):
        # Draw the car as a rectangle
        pygame.draw.rect(screen, self.color, (self.x, self.y, self.size, self.size))

# --- ENVIRONMENT FUNCTIONS ---
def draw_intersection(screen):
    screen.fill(GRAY)
    
    # Draw Vertical Road
    pygame.draw.rect(screen, ROAD_COLOR, (WIDTH//2 - GRID_SIZE, 0, GRID_SIZE*2, HEIGHT))
    # Draw Horizontal Road
    pygame.draw.rect(screen, ROAD_COLOR, (0, HEIGHT//2 - GRID_SIZE, WIDTH, GRID_SIZE*2))
    
    # Draw the Grid Lines
    for x in range(WIDTH//2 - GRID_SIZE, WIDTH//2 + GRID_SIZE + 1, GRID_SIZE):
        pygame.draw.line(screen, WHITE, (x, 0), (x, HEIGHT), 1)
    for y in range(HEIGHT//2 - GRID_SIZE, HEIGHT//2 + GRID_SIZE + 1, GRID_SIZE):
        pygame.draw.line(screen, WHITE, (0, y), (WIDTH, y), 1)

# --- MAIN LOOP ---
def main():
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption("Smart Adaptive Grid - Phase 1 (Dumb Cars)")
    clock = pygame.time.Clock()

    # Create two cars on a collision course
    # Car 1: Starts on the left, moves East in the bottom lane
    car1 = Car(x=0, y=HEIGHT//2 + 10, direction="E", color=RED)
    
    # Car 2: Starts at the bottom, moves North in the left lane
    car2 = Car(x=WIDTH//2 - 40, y=HEIGHT, direction="N", color=BLUE)

    # Put them in a list so we can manage multiple cars later
    all_cars = [car1, car2]

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()

        # 1. Update the physics (move the cars)
        for car in all_cars:
            car.move()

        # 2. Draw the background
        draw_intersection(screen)
        
        # 3. Draw the cars
        for car in all_cars:
            car.draw(screen)

        # Update display
        pygame.display.flip()
        clock.tick(FPS)

if __name__ == "__main__":
    main()