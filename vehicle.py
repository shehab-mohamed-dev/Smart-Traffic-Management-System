# vehicle.py
import pygame
from config import *

class Car:
    def __init__(self, car_id, x, y, direction, color, priority=0, fail_state=False, start_lane=None, end_lane=None, fail_timer=0):
        self.car_id = car_id
        self.x = x
        self.y = y
        self.direction = direction
        self.speed = 3 # <--- CONSTANT SPEED FOR EVERYONE
        self.color = color
        self.size = 30
        self.state = "MOVING" 
        
        self.priority = priority
        self.fail_state = fail_state
        self.start_lane = start_lane if start_lane else direction
        self.end_lane = end_lane if end_lane else direction
        self.fail_timer = fail_timer

    def update(self, all_cars):
        if self.fail_timer > 0:
            self.fail_timer -= 1
            if self.fail_timer == 0:
                self.fail_state = True
                self.state = "BROKEN"
        self.move(all_cars)
        
    def check_following(self, all_cars):
        # Basic safety radar
        safe_dist = 45 
        for other in all_cars:
            if other.car_id == self.car_id: continue
            is_in_front = False
            if self.direction == "E" and other.x > self.x and abs(self.y - other.y) < 10: is_in_front = True
            elif self.direction == "W" and other.x < self.x and abs(self.y - other.y) < 10: is_in_front = True
            elif self.direction == "N" and other.y < self.y and abs(self.x - other.x) < 10: is_in_front = True
            elif self.direction == "S" and other.y > self.y and abs(self.x - other.x) < 10: is_in_front = True

            if is_in_front:
                dist = abs(self.x - other.x) + abs(self.y - other.y)
                if dist < safe_dist: return True
        return False

    def move(self, all_cars):
        # Only stop if broken, brain says STOP, or radar sees a bumper
        if self.fail_state or self.state == "STOPPED" or self.check_following(all_cars):
            return 
            
        # Turning Logic (Physics only, no speed change)
        if self.start_lane == "W" and self.end_lane == "S":
            if self.direction == "W" and self.x <= WIDTH // 2 + 10: self.x, self.direction = WIDTH // 2 + 10, "S"
        elif self.start_lane == "E" and self.end_lane == "N":
            if self.direction == "E" and self.x >= WIDTH // 2 - 40: self.x, self.direction = WIDTH // 2 - 40, "N"
        elif self.start_lane == "N" and self.end_lane == "E":
            if self.direction == "N" and self.y <= HEIGHT // 2 + 10: self.y, self.direction = HEIGHT // 2 + 10, "E"
        elif self.start_lane == "S" and self.end_lane == "W":
            if self.direction == "S" and self.y >= HEIGHT // 2 - 40: self.y, self.direction = HEIGHT // 2 - 40, "W"

        if self.direction == "E": self.x += self.speed
        elif self.direction == "W": self.x -= self.speed
        elif self.direction == "N": self.y -= self.speed
        elif self.direction == "S": self.y += self.speed

    def draw(self, screen):
        draw_color = self.color
        if self.fail_timer > 0 and (pygame.time.get_ticks() // 250) % 2 == 0: draw_color = (255, 255, 0)
        if self.fail_state: draw_color = (150, 150, 150)
        elif self.priority == 2: draw_color = WHITE 
        pygame.draw.rect(screen, draw_color, (self.x, self.y, self.size, self.size))
        if self.priority == 2 and not self.fail_state:
            pygame.draw.rect(screen, RED, (self.x + 10, self.y + 4, 10, 22))
            pygame.draw.rect(screen, RED, (self.x + 4, self.y + 10, 22, 10))
        if self.fail_state:
            pygame.draw.line(screen, RED, (self.x, self.y), (self.x + self.size, self.y + self.size), 3)
            pygame.draw.line(screen, RED, (self.x + self.size, self.y), (self.x, self.y + self.size), 3)