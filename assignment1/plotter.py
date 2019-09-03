import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('1.txt',sep=",",header=None)
df.columns = ['ins','algo','rs','eps','hz','reg']
# now we need to plot for each algortihm the multiple plots 
df1 = df[df['ins'] == '../instances/i-1.txt']
df2 = df[df['ins'] == '../instances/i-2.txt']
df3 = df[df['ins'] == '../instances/i-3.txt']
print df1['ins'].shape, df2['ins'].shape, df3['ins'].shape

df_list = [df1,df2,df3]
ins = ['../instances/i-1.txt', '../instances/i-2.txt', '../instances/i-3.txt']
algo = [' round-robin',' epsilon-greedy',' ucb',' kl-ucb',' thompson-sampling']
eps=[0.002, 0.02, 0.2]
hz=[20, 50, 800, 3200, 12800, 51200, 204800]
rs = list(np.arange(50))
keys = ['r-r','e-greedy-0.002','e-greedy-0.02','e-greedy-0.2','ucb','kl-ucb','thompson']
# now plot these

for i in range(0,3):
    # create a numpy array for each 
    a = np.zeros((7,7))
    df = df_list[i]
    for l in range(0,7):
        hf = df[df['hz'] == hz[l]]
        count = 0
        for al in range(0,5):
            af = hf[hf['algo'] == algo[al]]
            if(algo[al] == ' epsilon-greedy'):
                for ep in eps:
                    ef = af[af['eps'] == ep]
                    # now average out reg for ef
                    mat = ef['reg']
                    r = np.mean(mat)
                    a[count, l] = r
                    count+=1

            else:
                mat = af['reg']
                r = np.mean(af['reg'])
                a[count, l] = r
                count+=1
    
    # now the plotting part
    x = np.array(hz)
    plt.figure()
    for p in range (0,7):
        y = a[p]
        plt.plot(x, y,label=keys[p])
        plt.xscale('log', basex=10)
        plt.legend()
    plt.show()
    # flash()