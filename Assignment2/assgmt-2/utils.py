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
	zeros = np.zeros(m).reshape(m,l)
	hinge = 1-np.multiply(targets1,outputs1)
	loss = np.maximum(zeros,hinge)
	mean_loss = (1.0/m)*np.dot(loss,loss)
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
	zeros = np.zeros(m).reshape(m,l)
	percep = -1*np.multiply(targets1,outputs1)
	loss = np.maximum(zeros,percep)
	mean_loss = (1.0/m)*np.sum(loss,axis=0)
	#print('percep_loss........===',mean_loss)
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
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	l = targets1.shape[1]
	zeros = np.zeros(m).reshape(m,l)
	hinge = 1-np.multiply(targets1,outputs1)
	
	for i in range(0,m):
		if(yyhat[i,0]!=0):
			yyhat[i,0]=1

	return np.random.random(11)

def logistic_grad(weights,inputs, targets, outputs):
	# Write thee logistic loss loss gradient here
	return 1.00

def perceptron_grad(weights,inputs, targets, outputs):
	# Write thee perceptron loss gradient here
	#need to implement if -y*yhat<0 then 0 else yxi
	#multiply the final answer by 2 for rescale compensation
	targets1,outputs1 = rescale(targets,outputs)
	m = targets1.shape[0]
	l = targets1.shape[1]
	zeros = np.zeros(m).reshape(m,l)
	yyhat = np.multiply(targets1,outputs1)
	yyhat = -1*yyhat
	yyhat = np.maximum(zeros,yyhat)
	for i in range(0,m):
		if(yyhat[i,0]!=0):
			yyhat[i,0]=1
	grad = np.multiply(targets1,inputs)
	grad = np.multiply(yyhat,grad)
	mean_grad = (1.0/m)*np.sum(grad,axis=0)
	#produce the array y
	#print('mean_grad..............',mean_grad)
	return -1*mean_grad

def L2_grad(weights):
	# Write the L2 loss gradient here
	# dL2/dw
	m = weights.shape[0]
	norm = L2_regulariser(weights)
	grad = np.divide(weights,norm)
	mean_grad = (1.0/m)*np.sum(grad,axis=0)
	return mean_grad

def L4_grad(weights):
	# Write the L4 loss gradient here
	m = weights.shape[0]
	norm = L4_regulariser(weights)
	grad = np.multiply(weights,weights)
	grad = np.multiply(grad,weights)
	norm1 = np.multiply(norm,norm)
	norm1 = np.multiply(norm1,norm)
	gradient = np.divide(grad,norm1)
	mean_grad = (1.0/m)*np.sum(gradient,axis=0)
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
