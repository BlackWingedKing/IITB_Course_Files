import numpy as np
import matplotlib.pyplot as plt

graph_start = 0
graph_end = 100
C = np.array([1,2,3,4,56,7,9,9]) #numpy array C of shape (x,)
X = np.linspace(graph_start, graph_end, C.shape[0] , endpoint=True)
plt.plot(X, C)
plt.show()