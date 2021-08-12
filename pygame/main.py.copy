import pygame
from pygame.locals import *
from math import *

WIDTH = <++>
FPS   = <++>
BG_COLOUR = 0xffffff

def main(argv):
    display = pygame.display.set_mode((WIDTH, WIDTH))
    display.fill(BG_COLOUR)
    fps_clock = pygame.time.Clock()
    while True:
        fps_clock.tick(FPS)

        <++>

        pygame.display.update()
        if is_quit():
            break

def gameloop():
    <++>

def is_quit():
    return pygame.locals.QUIT in [e.type for e in pygame.event.get()]

if __name__ == '__main__':
    from sys import argv
    main(argv)
