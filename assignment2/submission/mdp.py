# imports
from __future__ import print_function
import argparse
import numpy as np
import pulp
np.random.seed(0)

def lp_solve_mdp(R,T,gamma,mdp_type,ns,na):
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
                rhs+=T[s][a][s1]*(R[s][a][s1] + gamma*dvariables[s1])
            prob+= (dvariables[s] >= rhs)

    if(mdp_type == 'episodic'):
        # just add an extra condition if its episodic
        prob+=(dvariables[ns-1] == 0.0)

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
                Qval+=T[s][a][s1]*(R[s][a][s1]+gamma*dvariables[s1].varValue)
            Q_list.append(Qval)
        Q_array = np.array(Q_list)
        pi_list.append(np.argmax(Q_array))
    
    for i in range(0,ns):
        print("{0:.6f}".format(dvariables[i].varValue),'\t',pi_list[i])

def hpi_solve_mdp(R,T,gamma,mdp_type,ns,na):
    old_pi = np.zeros(ns,dtype=int)
    # howards policy iteration for non-episodic
    # initialise the policy
    # compute the v value
    # as we have fixed the policy 
    # computing Tprob P    
    check_con = True
    while(check_con):
        P = np.zeros((ns,ns))
        for s in range(0,ns):
            for s1 in range(0,ns):
                P[s,s1] = T[s][old_pi[s]][s1]
        r = np.zeros(ns)
        for s in range(0,ns):
            rval = 0.0
            for s1 in range(0,ns):
                rval+= T[s][old_pi[s]][s1]*R[s][old_pi[s]][s1]
            r[s] = rval

        if(mdp_type == 'episodic'):
            P = P[:-1,:-1]
            r = r[:-1]
            I = np.eye(ns-1)
            V = np.matmul(np.linalg.pinv(I-gamma*P),r.reshape(-1,1))
            V = np.append(V,[0.0])
            V = V.reshape(-1,1)
        else:
            I = np.eye(ns)
            V = np.matmul(np.linalg.pinv(I-gamma*P),r.reshape(-1,1))

        # find new policy array from this
        pi_list = []
        for s in range(0,ns):
            Q_list = []
            for a in range(0,na):
                Qval = 0.0
                for s1 in range(0,ns):
                    Qval+=T[s][a][s1]*(R[s][a][s1]+gamma*V[s1])
                Q_list.append(Qval)
            Q_array = np.array(Q_list)
            pi_list.append(np.argmax(Q_array))

        new_pi = np.array(pi_list)
        # check if the pi and new pi are dif
        check_con = not np.array_equal(old_pi,new_pi)
        old_pi = new_pi     

    # now we got the policy new_pi and value V
    for i in range(0,ns):
        print("{0:.6f}".format(V[i][0]),'\t',new_pi[i])

def main():
    # initialise the argparser
    # we need these
    # --algorithm al, where al is one of lp or hpi
    # --mdp filename, name of the text file
    parser = argparse.ArgumentParser()
    parser.add_argument("--algorithm", type=str, default='lp',help='algorithm')
    parser.add_argument("--mdp", type=str, default='/home/ritesh/Dropbox/sem7/CS_747/CS_747_assignments/assignment2/data/continuing/MDP2.txt',help='filename')

    args = parser.parse_args()
    
    filename = args.mdp 
    al = args.algorithm # a string must be one of lp or hpi

    f = open(filename,'r')
    # read the state and action values
    ns = int(f.readline())
    na = int(f.readline())

    R = []
    T = []
    for i in range(0,ns):
        r_list = []
        for j in range(0,na):
            a = f.readline().split()
            a = list(map(float, a))
            r_list.append(a)
        R.append(r_list)

    for i in range(0,ns):
        t_list = []
        for j in range(0,na):
            a = f.readline().split()
            a = list(map(float, a))
            t_list.append(a)
        T.append(t_list)
    
    gamma = float(f.readline())
    mdp_type = str(f.readline().strip())[:]

    if(al == 'lp'):
        lp_solve_mdp(R,T,gamma,mdp_type,ns,na)
    elif(al == 'hpi'):
        hpi_solve_mdp(R,T,gamma,mdp_type,ns,na)

if __name__ == '__main__':
    main()