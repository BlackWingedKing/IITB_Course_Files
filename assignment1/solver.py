import numpy as np
from scipy import optimize
import scipy
p = 0.6
alpha = p/(1-p)
eps = 1e-20

def fun(x):
    return 5 +p*np.log(x) + (1-p)*np.log(1-x)
def fprime(x):
    return (p/x) - ((1-p)/(1-x))
def fprime2(x):
    return -(p/x**2) - ((1-p)/(1-x)**2)
def f_p_pp(x):
    return fun(x), fprime(x), fprime2(x)
sol = optimize.root_scalar(fun, bracket=[p,1-eps] , method='brentq')
print(sol.root)