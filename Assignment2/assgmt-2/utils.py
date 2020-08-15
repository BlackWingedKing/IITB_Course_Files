import numpy as np
from numpy import linalg as la

def rescale(targets,outputs):
	m = targets.shape[0]
	targets = np.reshape(targets,(m,1))
	outputs = np.reshape(outputs,(m,1))
	#return (2*targets-1),(2*outputs-1)
	return targets,outputs

def square_hinge_loss(targets, outputs):
	# Write thee square hinge loss here
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	l = targets1.shape[1]
	hinge = 1-np.multiply(targets1,outputs1)
	loss = np.maximum(0.0,hinge)
	mean_loss = (1.0/m)*np.dot(loss.T,loss)
	return mean_loss

def logistic_loss(targets, outputs):
	# Write thee logistic loss loss here
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	loss = -1*np.multiply(targets1,outputs1)
	loss = 1 + np.exp(loss)
	loss = np.log(loss)
	mean_loss = (1.0/m)*np.sum(loss,axis=0)
	return mean_loss

def perceptron_loss(targets, outputs):
	# Write thee perceptron loss here
	# first take the output be in 
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	l = targets1.shape[1]
	percep = -1*np.multiply(targets1,outputs1)
	loss = np.maximum(0.0,percep)
	mean_loss = (1.0/m)*np.sum(loss,axis=0)
	#print('percep_loss........===',mean_loss)
	return mean_loss

def L2_regulariser(weights):
	# Write the L2 loss here
	#return la.norm(weights,2)
	return np.sum(np.power(weights,2))

def L4_regulariser(weights):
	# Write the L4 loss here
	#return la.norm(weights,4)
	return np.sum(np.power(weights,4))

def square_hinge_grad(weights,inputs, targets, outputs):
	# Write thee square hinge loss gradient here
	#need to derivate wrt to each weight
	#wx are outputs
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	l = targets1.shape[1]
	hinge = 1-np.multiply(targets1,outputs1)
	check = hinge>0.0
	grad = np.multiply(hinge,targets1)
	grad = -2*np.multiply(grad,inputs)
	mean_grad = (1.0/m)*np.sum(grad,axis=0)
	return mean_grad

def logistic_grad(weights,inputs, targets, outputs):
	# Write thee logistic loss loss gradient here
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	div = np.multiply(targets1,outputs1)
	div = 1 + np.exp(div)
	num = -1*np.multiply(targets1,inputs)
	grad = np.divide(num,div)
	mean_grad = (1.0/m)*np.sum(grad,axis=0)
	return mean_grad

def perceptron_grad(weights,inputs, targets, outputs):
	# Write thee perceptron loss gradient here
	#need to implement if -y*yhat<0 then 0 else yxi
	#multiply the final answer by 2 for rescale compensation
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	l = targets1.shape[1]
	yyhat = -1*np.multiply(targets1,outputs1)
	yyhat1 = yyhat>0.0
	grad = -1*np.multiply(targets1,inputs)
	grad = np.multiply(yyhat1,grad)
	mean_grad = (1.0/m)*np.sum(grad,axis=0)
	#produce the array y
	#print('mean_grad..............',mean_grad)
	return mean_grad

# def L2_grad(weights):
# 	# Write the L2 loss gradient here
# 	# dL2/dw
# 	m = weights.shape[0]
# 	norm = L2_regulariser(weights)
# 	grad = np.divide(weights,norm)
# 	mean_grad = (1.0/m)*np.sum(grad,axis=0)
# 	return mean_grad

def L2_grad(weights):
	# Write the L2 loss gradient here
	m = weights.shape[0]
	grad = 2*weights
	mean_grad = (1.0/m)*np.sum(grad,axis=0)
	return mean_grad

# def L4_grad(weights):
# 	# Write the L4 loss gradient here
# 	m = weights.shape[0]
# 	norm = L4_regulariser(weights)
# 	grad = np.multiply(weights,weights)
# 	grad = np.multiply(grad,weights)
# 	norm1 = np.multiply(norm,norm)
# 	norm1 = np.multiply(norm1,norm)
# 	gradient = np.divide(grad,norm1)
# 	mean_grad = (1.0/m)*np.sum(gradient,axis=0)
# 	return mean_grad

def L4_grad(weights):
	# Write the L4 loss gradient here
	m = weights.shape[0]
	grad = 4*np.power(weights,3)
	mean_grad = (1.0/m)*np.sum(grad,axis=0)
	return mean_grad

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
