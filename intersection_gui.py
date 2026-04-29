# intersection_gui.py
import pygame
from config import *

def draw_environment(screen):
    screen.fill(GRAY)
    
    # Draw Roads
    pygame.draw.rect(screen, ROAD_COLOR, (WIDTH//2 - GRID_SIZE, 0, GRID_SIZE*2, HEIGHT))
    pygame.draw.rect(screen, ROAD_COLOR, (0, HEIGHT//2 - GRID_SIZE, WIDTH, GRID_SIZE*2))
    
    # Draw the Space-Time Grid Reservation lines
    for x in range(WIDTH//2 - GRID_SIZE, WIDTH//2 + GRID_SIZE + 1, GRID_SIZE):
        pygame.draw.line(screen, WHITE, (x, 0), (x, HEIGHT), 1)
    for y in range(HEIGHT//2 - GRID_SIZE, HEIGHT//2 + GRID_SIZE + 1, GRID_SIZE):
        pygame.draw.line(screen, WHITE, (0, y), (WIDTH, y), 1)