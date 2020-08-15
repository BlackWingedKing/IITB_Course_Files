# imports
from __future__ import print_function
import argparse
import numpy as np
import sys
import pulp
np.random.seed(0)

def lp_solve_mdp(R,T,gamma,ns,na):
    # from my assignment 2
    # linear programming solver for mdp
    # now we have both R and T functions
    prob = pulp.LpProblem('mdp_solve', pulp.LpMinimize)
    dvariables = []
    for i in range(0,ns):
        variable = str('v' + str(i))
        variable = pulp.LpVariable(str(variable))
        dvariables.append(variable)
    cost = ''
    for i in range(0,ns):
        cost+=dvariables[i]
    prob+=cost
    for s in range(0,ns):
        for a in range(0,na):
            rhs = ''
            for s1 in range(0,ns):
                rhs+=T[s,a,s1]*(R[s,a,s1] + gamma*dvariables[s1])
            prob+= (dvariables[s] >= rhs)

    # now since the definition is completed solve it
    optimization_result = prob.solve()
    # assert optimization_result == pulp.LpStatusOptimal

    # now we got the v value next define q and then solve for pi
    pi_list = []
    for s in range(0,ns):
        Q_list = []
        for a in range(0,na):
            Qval = 0.0
            for s1 in range(0,ns):
                Qval+=T[s,a,s1]*(R[s,a,s1]+gamma*dvariables[s1].varValue)
            Q_list.append(Qval)
        Q_array = np.array(Q_list)
        pi_list.append(np.argmax(Q_array))
    
    V = []
    for i in range(0,ns):
        print("{0:.6f}".format(dvariables[i].varValue))
        V.append(float(dvariables[i].varValue))
    return np.array(V)

def main():
    # parse using sys.argv
    filename = sys.argv[1]
    f = open(filename,'r')
    # read the state and action values
    ns = int(f.readline())
    na = int(f.readline())
    gamma = float(f.readline())
    # initialise the arrays for estimation
    R = np.zeros((ns,na,ns))
    T = np.zeros((ns,na,ns))
    C = np.zeros((ns,na,ns))
    RC = np.zeros((ns,na,ns))
    # now read all other lines at once
    # model based approach estimate R and T using
    listy = f.readlines()
    for i in range(0,len(listy)):
        line = listy[i].split()
        if(len(line) <= 1):
            break
        nextline = listy[i+1].split()
        s,a,r,s1 = int(line[0]), int(line[1]), float(line[2]), int(nextline[0])
        # now update the values
        R[s,a,s1]+= float(r)
        RC[s,a,s1]+= 1.0
        T[s,a,s1]+= 1.0
        C[s,a,:]+= 1.0  

    zero_index = np.where(C == 0.0)
    zero_rindex = np.where(RC == 0.0)
    C[zero_index] = 1.0
    RC[zero_rindex] = 1.0
    T = T/C
    R = R/RC
    # now we got the ns, na, gamma, R, T
    # now findout value function using linear programming from assignment2
    V = lp_solve_mdp(R,T,gamma,ns,na)

    # # now calculate the mse
    # # Vg is the ground truth value
    # Vg = np.loadtxt('./data/v2.txt')
    # print(np.sum(np.power((V-Vg),2)))

if __name__ == '__main__':
    main()