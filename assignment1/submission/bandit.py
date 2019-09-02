# imports
from __future__ import print_function
import argparse
import numpy as np
import scipy
from scipy import optimize
import warnings
warnings.filterwarnings("ignore")

# define some global variables
kl_p = 0.5
kl_eps = 1e-16 # some small value
kl_B = 1.0

def kl_ce(x):
    global kl_B, kl_p
    f1 = -kl_B + kl_p*np.log(kl_p + float((kl_p == 0))) + (1.0-kl_p)*np.log(1.0-kl_p + float((kl_p == 1)))
    f2 = -kl_p*np.log(x) - (1.0-kl_p)*np.log(1.0-x)
    return f1 + f2

def find_kl_ucb(p,B):
    # p has individual prob vectors and B is the addition Bound
    global kl_p,kl_B,kl_eps
    l = p.shape[0]
    ret = np.zeros_like(p)
    for i in range(0,l):
        kl_p = p[i]
        kl_B = B[i]
        if(kl_p == 1):
            ret[i] = 1
        else:
            t1 = kl_ce(kl_p)
            tval = 1.0-kl_eps
            t2 = kl_ce(tval)
            if(t1 <=0.0):
                if(t2>=0.0):
                    # solution exists
                    # sol = optimize.root_scalar(kl_ce, bracket=[kl_p,1-kl_eps] , method='brentq')
                    root = optimize.bisect(kl_ce, kl_p, tval)
                    # while(True):
                        # my implementation of bisection search
                        # right bound will always be 1    
                    ret[i] = root
                elif(t2<0.0):
                    ret[i] = 1.0
            else:
                ret[i] = kl_p
    return ret

def round_robin(a, eps, hz):
    n = a.shape[0]
    index = 0
    cumm_re = 0
    for i in range(0,hz):
        # round robin sample
        # generate from bernouli a[index]
        val = np.random.binomial(size=1, n=1, p= a[index])
        cumm_re+=val
        index+=1
        index = index%n
    mexp_re = np.max(a)*hz
    regret = mexp_re - cumm_re
    return regret[0]

def epsilon_greedy(a, eps, hz):
    n = a.shape[0]
    cumm_re = 0
    u = np.zeros_like(a) # u has the pulls
    r = np.zeros_like(a) # r has the rewards till now
    em = np.zeros_like(a) # em -> empirical mean

    for i in range(0,hz):
        # epsilon greedy        
        em = np.divide(r, u)
        # if they are nan make those prob to be one
        ind = np.where(em!=em)
        em[ind] = 1.0 # this removes the nan
        # we know the eps
        # so sample a bernouli with eps as prob value
        eps_bool = np.random.binomial(size=1, n=1, p=eps)
        if(eps_bool):
            # pull a random arm
            arm_index = np.random.choice(n,1,replace=False)
        else:
            arm_index = np.argmax(em)

        val = np.random.binomial(size=1,n=1, p=a[arm_index])
        # update u and r
        r[arm_index]+=val
        u[arm_index]+=1
        cumm_re+=val
    mexp_re = np.max(a)*hz
    regret = mexp_re - cumm_re
    return regret[0]

def ucb(a, eps, hz):
    n = a.shape[0]
    index = 0
    cumm_re = 0
    u = np.zeros_like(a) # u has the pulls
    r = np.zeros_like(a) # r has the rewards till now
    em = np.zeros_like(a) # em -> empirical mean
    ucb_u = np.zeros_like(a)
    # first round robin for starting n steps
    for i in range(0,n):
        # round robin here
        # generate from bernouli
        val = np.random.binomial(size=1,n=1, p =a[i])
        r[i]+=val
        u[i]+=1
        cumm_re+=val

    for i in range(n,hz):
        # ucb        
        em = np.divide(r, u)
        # define ucb, t is i, 
        temp = 2*np.log(i)/u
        ucb_u = em + np.sqrt(temp)
        arm_index = np.argmax(ucb_u)

        val = np.random.binomial(size=1,n=1, p=a[arm_index])
        # update u and r
        r[arm_index]+=val
        u[arm_index]+=1
        cumm_re+=val
    mexp_re = np.max(a)*hz
    regret = mexp_re - cumm_re
    return regret[0]

def kl_ucb(a, eps, hz):
    n = a.shape[0]
    index = 0
    cumm_re = 0
    u = np.zeros_like(a) # u has the pulls
    r = np.zeros_like(a) # r has the rewards till now
    em = np.zeros_like(a) # em -> empirical mean
    ucb_kl = np.zeros_like(a)

    # first round robin for starting n steps
    for i in range(0,n):
        # round robin here
        # generate from bernouli
        val = np.random.binomial(size=1,n=1, p =a[i])
        r[i]+=val
        u[i]+=1
        cumm_re+=val

    for i in range(n,hz):
        # kl-ucb        
        em = np.divide(r, u)
        # define kl-ucb, t is i, 
        # compute the bound value 
        li = np.log(i)
        C = np.divide((li + 3*np.log(li)) , u)
        ucb_kl = find_kl_ucb(em,C)
        arm_index = np.argmax(ucb_kl)
        val = np.random.binomial(size=1,n=1, p=a[arm_index])
        # update u and r
        r[arm_index]+=val
        u[arm_index]+=1
        cumm_re+=val
    mexp_re = np.max(a)*hz
    regret = mexp_re - cumm_re
    return regret[0]

def thompson_sampling(a, eps, hz):
    # thompson sampling
    n = a.shape[0]
    index = 0
    cumm_re = 0
    s = np.zeros_like(a)
    f = np.zeros_like(a)
    xa = np.zeros_like(a)
    for i in range(0,hz):
        # sample from the beta(s+1,f+1)
        for j in range(0,n):
            xa[j] = np.random.beta(s[j]+1,f[j]+1,1)
        arm_index = np.argmax(xa)
        # pull the arm
        val = np.random.binomial(size=1,n=1, p=a[arm_index])
        if(val==1):
            s[arm_index]+=1
        else:
            f[arm_index]+=1
        cumm_re+=val
    mexp_re = np.max(a)*hz
    regret = mexp_re - cumm_re
    return regret[0]
    
def main():
    # initialise the argparser
    # we need these
    # --instance in, where in is a path to the instance file.
    # --algorithm al, where al is one of round-robin, epsilon-greedy, ucb, kl-ucb, and thompson-sampling.
    # --randomSeed rs, where rs is a non-negative integer.
    # --epsilon ep, where ep is a number in [0, 1].
    # --horizon hz, where hz is a non-negative integer.
    parser = argparse.ArgumentParser()
    parser.add_argument("--instance", type=str, default='../instances/i-3.txt',help='filename')
    parser.add_argument("--algorithm", type=str, default='round-robin',help='algorithm')
    parser.add_argument("--randomSeed", type=int, default=0,help='seed')
    parser.add_argument("--epsilon", type=float, default=0.5,help='eps value')
    parser.add_argument("--horizon", type=int, default=800,help='end point')

    args = parser.parse_args()
    
    filename = args.instance
    al = args.algorithm # a string must be one of round-robin, epsilon-greedy, ucb, kl-ucb, thompson-sampling
    eps = args.epsilon
    rs = args.randomSeed
    hz = args.horizon
    np.random.seed(rs)

    a = np.loadtxt(filename)

    if(al == 'round-robin'):
        b = round_robin(a, eps, hz) # b is the regret
        print(filename, ', ', al, ', ', rs, ', ', eps, ', ', hz, ', ', b,sep='')
    elif(al == 'epsilon-greedy'):
        b = epsilon_greedy(a, eps, hz)
        print(filename, ', ', al, ', ', rs, ', ', eps, ', ', hz, ', ', b,sep='') 
    elif(al == 'ucb'):
        b = ucb(a, eps, hz)        
        print(filename, ', ', al, ', ', rs, ', ', eps, ', ', hz, ', ', b,sep='')  
    elif(al == 'kl-ucb'):
        b = kl_ucb(a, eps, hz)
        print(filename, ', ', al, ', ', rs, ', ', eps, ', ', hz, ', ', b,sep='') 
    elif(al == 'thompson-sampling'):
        b = thompson_sampling(a, eps, hz)
        print(filename, ', ', al, ', ', rs, ', ', eps, ', ', hz, ', ', b,sep='')  

if __name__ == '__main__':
    main()