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

    def move8(self, a, stval):
        if(a == 0):
            # move left
            self.x = self.makevalidx(self.x - self.wind[self.y] + stval)
            self.y = self.makevalidy(self.y - 1)
        elif(a == 1):
            # move left-up
            self.x = self.makevalidx(self.x - self.wind[self.y] - 1 + stval)
            self.y = self.makevalidy(self.y - 1)
        elif(a == 2):
            # move up
            self.x = self.makevalidx(self.x - 1 - self.wind[self.y] +  stval)
        elif(a == 3):
            # move up-right
            self.x = self.makevalidx(self.x - 1 - self.wind[self.y] +  stval)
            self.y = self.makevalidy(self.y + 1)
        elif(a == 4):
            # move right
            self.x = self.makevalidx(self.x - self.wind[self.y] +  stval)
            self.y = self.makevalidy(self.y + 1)
        elif(a == 5):
            # move right-down
            self.x = self.makevalidx(self.x - self.wind[self.y]+1 +  stval)
            self.y = self.makevalidy(self.y + 1)
        elif(a == 6):
            # move down
            self.x = self.makevalidx(self.x - self.wind[self.y] + 1 +  stval)
        else:
            # move left-down
            self.x = self.makevalidx(self.x - self.wind[self.y]+1 +  stval)
            self.y = self.makevalidy(self.y - 1)

        if((self.x == self.end[0]) and (self.y == self.end[1])):
            self.ter = 1
        return -1

    
    # def move8(self,a):
    #     # a can be from 0 to 7
    #     if(a == 0):
    #         # 
    # def movewind(self,a):

def selecta(A,eps,state,Q):
    # this does the eps greedy thing
    val = np.random.rand(1)[0]
    if(val<eps): 
        return np.random.choice(A)
    else: 
        return np.argmax(Q[state[0],state[1], :])

def main():
    # sarsa params
    eps = 0.1
    alpha = 0.5
    # envt intialised now initialise Q values and then perform the sarsa algo
    nactions = 4
    nepisodes = 200
    stoch = False
    A = np.arange(nactions) # action space
    Q = np.zeros((7,10,nactions))
    Q[3,9,:] = 0.0
    # implement the sarsa
    T = 0
    earray = np.arange(nepisodes)
    tarray = np.zeros_like(earray)    
    for i in range(0,nepisodes):
        # now initialise the envt class
        grid = windgrid()
        a = selecta(A,eps,[grid.x, grid.y],Q)
        r = 0

        while(True):
            s = [grid.x, grid.y]
            if(nactions == 4):
                r = grid.move4(a)
            elif(not(stoch) and nactions == 8):
                r = grid.move8(a,0)
            else:
                # stochasiticity and actions == 8
                temp = np.random.rand(1)[0]
                if(temp <=(1.0/3.0)):
                    stval = 0
                elif(temp <= (2.0/3.0)):
                    stval = 1
                else:
                    stval = -1
                r = grid.move8(a, stval)
            T+=1
            s1 = [grid.x, grid.y]
            a1 = selecta(A,eps,[grid.x, grid.y],Q)
            # print(s, a, s1, a1)
            # print(Q[s[0],s[1],a])
            # flash()
            Q[s[0],s[1],a] = Q[s[0],s[1],a] + alpha*(r + Q[s1[0],s1[1],a1] - Q[s[0],s[1],a])
            a = a1
            if(grid.ter):
                break
        tarray[i] = T
    print(tarray)
    plt.figure()
    plt.plot(tarray,earray)
    plt.show()

if __name__ == '__main__':
    main()