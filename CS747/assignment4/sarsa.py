# imports
from __future__ import print_function
import numpy as np
import matplotlib.pyplot as plt
import sys
from windgrid import windgrid

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
    ns = int(sys.argv[1]) # number of independent runs
    print('running for ', ns, 'seeds')
    # implement the sarsa
    earray = np.arange(nepisodes)
    tarray = np.zeros((ns, 4, nepisodes))    
    for iz in range(0,4):
        if(iz == 0):
            nactions = 4
            stoch,zstoch = False, False
        elif(iz == 1):
            nactions = 8
            stoch,zstoch = False, False
        elif(iz == 2):
            nactions = 8
            stoch,zstoch = True, False
        else:
            nactions = 8
            stoch,zstoch = True, True
        for seed in range(0,ns):
            # here starts each and every independent run
            np.random.seed(seed)
            A = np.arange(nactions) # action space
            Q = np.zeros((7,10,nactions))
            Q[3,9,:] = 0.0
            print('running ',iz, 'seed ',seed)
            T = 0
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
                        r = grid.move8(a,0,zstoch)
                    else:
                        # stochasiticity and actions == 8
                        temp = np.random.rand(1)[0]
                        if(temp <=(1.0/3.0)):
                            stval = 0
                        elif(temp <= (2.0/3.0)):
                            stval = 1
                        else:
                            stval = -1
                        r = grid.move8(a, stval, zstoch)
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
                tarray[seed,iz,i]= T

    tarray = np.mean(tarray, axis=0)
    # plot all of them combined
    plt.figure()
    plt.plot(tarray[0],earray, label='4 moves')
    plt.plot(tarray[1],earray, label='8 moves')
    plt.plot(tarray[2],earray, label='8 moves no stoc at 0')
    plt.plot(tarray[3],earray, label='8 moves with stoc')
    plt.xlabel('time steps')
    plt.ylabel('episodes')
    plt.title('All tasks combined')
    plt.legend()
    plt.show()
    # plot seperately now
    plt.figure()
    plt.plot(tarray[0],earray, label='4 moves')
    plt.xlabel('time steps')
    plt.ylabel('episodes')
    plt.title('Task 1')
    plt.legend()
    plt.show()

    plt.figure()
    plt.plot(tarray[1],earray, label='8 moves')
    plt.xlabel('time steps')
    plt.ylabel('episodes')
    plt.title('Task 2')
    plt.legend()
    plt.show()

    plt.figure()
    plt.plot(tarray[2],earray, label='8 moves no stoc at 0')
    plt.xlabel('time steps')
    plt.ylabel('episodes')
    plt.title('Task 3')
    plt.legend()
    plt.show()

    plt.figure()
    plt.plot(tarray[3],earray, label='8 moves with stoc')
    plt.xlabel('time steps')
    plt.ylabel('episodes')
    plt.title('Task 3 variant')
    plt.legend()
    plt.show()

if __name__ == '__main__':
    main()