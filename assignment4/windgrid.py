# imports
from __future__ import print_function
import argparse
import numpy as np
import sys
import pulp
import matplotlib.pyplot as plt

class windgrid():
    def __init__(self):
        super(windgrid,self).__init__()
        self.envt = np.zeros((7,10))
        self.end = np.array([3,8])
        self.x = 3
        self.y = 0
        self.wind = np.array([0,0,0,1,1,1,2,2,1,0])
        self.ter = 0 # it will be one when its terminated 

    def makevalidx(self, x):
        if(x < 0):
            return 0
        if(x > 6):
            return 6
        else:
            return x

    def makevalidy(self, y):
        if(y < 0):
            return 0
        if(y > 9):
            return 9
        else:
            return y
    
    def move4(self, a):
        if(a == 0):
            # move left
            self.x = self.makevalidx(self.x - self.wind[self.y])
            self.y = self.makevalidy(self.y - 1)
        elif(a == 1):
            # move up
            self.x = self.makevalidx(self.x - 1 - self.wind[self.y])
        elif(a == 2):
            # move right
            self.x = self.makevalidx(self.x - self.wind[self.y])
            self.y = self.makevalidy(self.y + 1)
        else:
            # move down
            self.x = self.makevalidx(self.x - self.wind[self.y] + 1)
        if((self.x == self.end[0]) and (self.y == self.end[1])):
            self.ter = 1
        return -1

    def move8(self, a, stval, v):
        if(not(v)):
            val = (self.wind[self.y] > 0)
        else:
            val = 1
        if(a == 0):
            # move left
            self.x = self.makevalidx(self.x - self.wind[self.y] + val*stval)
            self.y = self.makevalidy(self.y - 1)
        elif(a == 1):
            # move left-up
            self.x = self.makevalidx(self.x - self.wind[self.y] - 1 + val*stval)
            self.y = self.makevalidy(self.y - 1)
        elif(a == 2):
            # move up
            self.x = self.makevalidx(self.x - 1 - self.wind[self.y] + val*stval)
        elif(a == 3):
            # move up-right
            self.x = self.makevalidx(self.x - 1 - self.wind[self.y] + val*stval)
            self.y = self.makevalidy(self.y + 1)
        elif(a == 4):
            # move right
            self.x = self.makevalidx(self.x - self.wind[self.y] + val*stval)
            self.y = self.makevalidy(self.y + 1)
        elif(a == 5):
            # move right-down
            self.x = self.makevalidx(self.x - self.wind[self.y]+1 + val*stval)
            self.y = self.makevalidy(self.y + 1)
        elif(a == 6):
            # move down
            self.x = self.makevalidx(self.x - self.wind[self.y] + 1 + val*stval)
        else:
            # move left-down
            self.x = self.makevalidx(self.x - self.wind[self.y]+1 + val*stval)
            self.y = self.makevalidy(self.y - 1)

        if((self.x == self.end[0]) and (self.y == self.end[1])):
            self.ter = 1
        return -1