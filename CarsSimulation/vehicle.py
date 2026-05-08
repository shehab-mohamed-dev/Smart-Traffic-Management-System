# vehicle.py
import pygame
from config import CX, CY, GRID_SIZE, WHITE

CAR_SIZE     = 14
CAR_SPEED    = 2.5
WP_THRESHOLD = 3   # pixels — how close before snapping to next waypoint

# Each approaching car stops just outside the intersection boundary while waiting.
# Values are (check_type, pixel_limit).
_HOLD_LINE = {
    "S": ("y_max", CY + GRID_SIZE + 10),  # approaching from bottom, moving up
    "N": ("y_min", CY - GRID_SIZE - 10),  # approaching from top, moving down
    "E": ("x_max", CX + GRID_SIZE + 10),  # approaching from right, moving left
    "W": ("x_min", CX - GRID_SIZE - 10),  # approaching from left, moving right
}

_font = None
def _get_font():
    global _font
    if _font is None:
        _font = pygame.font.SysFont(None, 14)
    return _font


class Car:
    def __init__(self, car_id, route_name, entry_dir, waypoints, color):
        self.car_id    = car_id
        self.route     = route_name
        self.entry_dir = entry_dir
        self.waypoints = waypoints
        self.color     = color
        self.wp        = 0
        self.x         = float(waypoints[0][0])
        self.y         = float(waypoints[0][1])
        self.released  = False  # set True by the handler when the intersection is free
        self.done      = False

    def _at_hold_line(self):
        """Returns True once the car reaches the stop point before the intersection."""
        check, limit = _HOLD_LINE[self.entry_dir]
        if check == "y_max": return self.y <= limit
        if check == "y_min": return self.y >= limit
        if check == "x_max": return self.x <= limit
        if check == "x_min": return self.x >= limit

    def move(self):
        if self.done:
            return

        # Hold at the stop line until the handler releases this car
        if not self.released and self._at_hold_line():
            return

        if self.wp >= len(self.waypoints):
            self.done = True
            return

        tx, ty = self.waypoints[self.wp]
        dx, dy = tx - self.x, ty - self.y
        dist   = (dx * dx + dy * dy) ** 0.5

        if dist < WP_THRESHOLD:
            self.x, self.y = float(tx), float(ty)
            self.wp += 1
            if self.wp >= len(self.waypoints):
                self.done = True
        else:
            self.x += (dx / dist) * CAR_SPEED
            self.y += (dy / dist) * CAR_SPEED

    def draw(self, screen):
        # Waiting cars are drawn gray so it's clear they're queued
        color = (150, 150, 150) if not self.released else self.color
        rect  = (int(self.x) - CAR_SIZE // 2,
                 int(self.y) - CAR_SIZE // 2,
                 CAR_SIZE, CAR_SIZE)
        pygame.draw.rect(screen, color, rect)
        label = _get_font().render(str(self.car_id), True, WHITE)
        screen.blit(label, (int(self.x) - 4, int(self.y) - 5))