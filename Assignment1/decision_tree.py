#class implementation of the previous code

import numpy as np

#I'm assuming I will be getting two numpy arrays of size n*(m+1) array names are data and index
#also I have cross checked all the functions :)

class d_tree(object):
	"""docstring for d_tree"""
	def __init__(self, data):
		super(d_tree, self).__init__()
		#attributes of this class??
		#left child
		#right child
		#data numpy array
		#isleaf condition
		self.isleaf = False
		self.left = None
		self.right = None
		self.data = data
		
		self.left_data = None
		self.right_data = None
		self.attribute_value = False
		
		# self.threshold_loss = None	
		
		self.corr = self.correlation(self.data)
		self.pred = self.prediction(self.data)

		self.split_attribute = self.find_attribute(self.corr)
		print(self.split_attribute)
		#sort the data
		self.data = self.index_sort(self.data,self.split_attribute)
		print(self.data)
		self.split_index = self.find_split_index(self.data,self.split_attribute)
		print(self.split_index)
		#adding the condition for the split
		if(self.split_index==0):
			self.isleaf= True

		if(self.isleaf==False):
			self.attribute_value = self.data[self.split_index,self.split_attribute]
			self.left_data,self.right_data = self.split(self.data,self.split_index)
			self.right = d_tree(self.right_data)
			self.left = d_tree(self.left_data)		

	#member functions
	def mean(self,a):
		# finds mean of each column
		mean = np.sum(a,axis=0)
		mean = mean/(a.shape)[0]
		return mean

	def mean_dev(self,a):
		#mean_dev = x-x'
		avg = self.mean(a)
		b = a-avg
		return b

	def sd(self,a):
		#no 1/n-1 term in sd
		b = self.mean_dev(a)
		b = np.multiply(b,b)
		b = np.sum(b,axis=0)
		b = np.sqrt(b)
		return b

	def correlation(self,a):
		#returns an 1*(m+1) array which has the correlations of each attribute w.r.t the last column
		#the last element of this array would be 1
		dev_mean = self.mean_dev(a)
		s_dev = self.sd(a)
		corr = dev_mean.T*dev_mean.T[-1]
		corr = corr.T
		temp = s_dev*s_dev[-1]
		corr = corr/temp
		corr = np.sum(corr, axis=0)
		print(corr)
		return corr

	def find_attribute(self,a):
		#returns the index no. the attribute index. input must be the correlation matrix
		a = a[:-1]
		a = np.absolute(a)
		b = np.argmax(a)
		print(b)
		return b

	def add_rid_sort(self,a,n):
		#this function adds the row id to the input array and then sorts it according to the attribute found
		#n is the id w.r.t which sorting needs to be done
		#input is the data_array and attribute_index
		l = (a.shape)[0]
		rid = np.arange(l).reshape(l, 1)
		b = np.concatenate((a,rid),axis=1)
		print(b)
		c = b[b[:,n].argsort()]
		print(c)
		return c

	def index_sort(self,a,n):
		#the above function without row_id sort
		#this function doesn't add row id to the input array but sorts it according to the attribute found
		#n is the id w.r.t which sorting needs to be done
		#input is the data_array and attribute_index
		c = a[a[:,n].argsort()]
		print(c)
		return c

	def prediction(self,a):
		#inputs the data array
		#prediction would be the mean of the last column 
		l = (a.shape)[0]
		b = a[:,-1]
		b = b.reshape(l,1)
		pred = self.mean(b)
		return pred

	def loss(self,a):
		#for this function given an numpy array it calculates the pred and returns the error
		#calculates the mean square loss
		l = (a.shape)[0]
		b = a[:,-1]
		b = b.reshape(l,1)
		loss = self.mean_dev(b)
		loss = np.multiply(loss,loss)
		loss = np.sum(loss, axis = 0)
		return loss

	def find_split_index(self,a,n):
		#got an array in which index n's attribute is sorted
		#now need to produce the best split
		total_loss = []
		l = a.shape[0]
		for i in range(0,l-1):
			loss = 0.0
			#need to add end conditions
			if(i==0):
				loss = loss + self.loss(a)
			else:
				loss = loss + self.loss(a[0:i]) + self.loss(a[i:l])
			total_loss.append(loss)
		total_loss = np.asarray(total_loss)
		split_index = np.argmin(total_loss)
		return split_index
	
	def split(self,a,m):
		#calculate current loss
		#we should have the split index and sorted array(important) and attribute index
		l = a.shape[0]
		return a[0:m],a[m:l]


if __name__=='__main__':
	#instantize the class from the csv file
	#we get the data from paramters or infer.py
	data_array = np.genfromtxt('toy_dataset.csv', delimiter=',')
	l = data_array.shape[0]
	data_array = data_array[1:l]
	parent = d_tree(data_array)
