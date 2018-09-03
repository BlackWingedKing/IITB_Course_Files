import numpy as np
from numpy import linalg as la

def square_hinge_loss(targets, outputs):
	# Write thee square hinge loss here
	m = targets.shape[0]
	l = targets.shape[1]
	zeros = np.zeros(m).reshape(m,l)
	hinge = 1-np.multiply(targets,outputs)
	loss = np.maximum(zeros,hinge)
	mean_loss = (1.0/m)*np.dot(loss,loss)
	return mean_loss
def logistic_loss(targets, outputs):
	# Write thee logistic loss loss here
	m = targets.shape[0]
	loss = -1*np.multiply(targets,np.log(outputs))-np.multiply((1-targets),np.log(1-outputs)) 
	mean_loss = (1.0/m)*np.sum(loss,axis=0)
	return mean_loss

def perceptron_loss(targets, outputs):
	# Write thee perceptron loss here
	m = targets.shape[0]
	l = targets.shape[1]
	zeros = np.zeros(m).reshape(m,l)
	percep = -1*np.multiply(targets,outputs)
	loss = np.maximum(zeros,percep)
	mean_loss = (1.0/m)*np.sum(loss,axis=0)
	return mean_loss

def L2_regulariser(weights):
	# Write the L2 loss here
	return la.norm(weights)

def L4_regulariser(weights):
	# Write the L4 loss here
	return la.norm(weights,4)

def square_hinge_grad(weights,inputs, targets, outputs):
	# Write thee square hinge loss gradient here
	#need to derivate wrt to each weight
	#wx are outputs
	m = targets.shape[0]
	l = targets.shape[1]
	zeros = np.zeros(m).reshape(m,l)
	hinge = 1-np.multiply(targets,outputs)
	#if hinge[i]>0 the 2w*output else 
	

	return np.random.random(11)

def logistic_grad(weights,inputs, targets, outputs):
	# Write thee logistic loss loss gradient here
	return 1.00

def perceptron_grad(weights,inputs, targets, outputs):
	# Write thee perceptron loss gradient here
	return np.random.random(11)

def L2_grad(weights):
	# Write the L2 loss gradient here
	return 0.00

def L4_grad(weights):
	# Write the L4 loss gradient here
	return 0.00

loss_functions = {"square_hinge_loss" : square_hinge_loss, 
                  "logistic_loss" : logistic_loss,
                  "perceptron_loss" : perceptron_loss}

loss_grad_functions = {"square_hinge_loss" : square_hinge_grad, 
                       "logistic_loss" : logistic_grad,
                       "perceptron_loss" : perceptron_grad}

regularizer_functions = {"L2": L2_regulariser,
                         "L4": L4_regulariser}

regularizer_grad_functions = {"L2" : L2_grad,
                              "L4" : L4_grad}                           
