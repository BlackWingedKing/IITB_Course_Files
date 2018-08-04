#To run in terminal: python csvreader.py -n = path/to/dataset.csv
#gives : attributes array, array of attribute's data (with Row ID), array of mean of attribute's data (except output attribute), array of variance data (except output attribute)

import csv
import numpy as np
import argparse

class dtree:
 	
	def readcsv(self,name,arr1,arr2):

		#rows list
		columns= np.empty([])
		#attributes
		attributes = np.array([])

		rows = []

		#reading 
		with open(name,'r') as csvfile:
			csvreader = csv.reader(csvfile)
			attributes = csvreader.next()

			for row in csvreader:
				rows.append(row)
		rows = np.array(rows)
		columns = np.transpose(rows,None)
		
		np.resize(arr1,np.shape(columns))
		np.resize(arr2,np.shape(attributes))
		arr1=columns
		arr2=attributes
		arr1 = arr1.astype(np.float)
		return arr1,arr2

	def make_RID(self,matrix):

		RID = []
		for i in range(matrix.shape[1]):
			RID.append(i)
		RID = np.array(RID)
		matrix = np.vstack((matrix,RID))
		return matrix

	def find_variance(self,matrix,mean_mat):
		var_list = []
		var = 0
		for i in range(matrix.shape[0]):
			for j in range(matrix.shape[1]):
				var = var + (matrix[i][j] - mean_mat[i])**2
			var_list.append(var)
			var=0
		var_mat = np.array(var_list)
		return var_mat



	def find_mean(self,matrix,mean_mat):
		new = np.empty((matrix.shape[1]))
		new = np.sum(matrix,axis = 1)/float(matrix.shape[1])
		np.resize(mean_mat,np.shape(new))
		mean_mat = new
		return mean_mat

	# def find_error(self):

	# def make_split(self,matrix,attribute_index):


if __name__=='__main__':
	ap = argparse.ArgumentParser()
	ap.add_argument("-n", "--name", required=True,help="path to the csvfile")
	args = vars(ap.parse_args())
	cols=np.empty([])
	att=np.empty([])
	D=dtree()
	p=args["name"]
	cols,att = dtree.readcsv(D,p,cols,att)
	mean_mat = np.empty([])
	mean_mat = dtree.find_mean(D,cols,mean_mat)
	cols = dtree.make_RID(D,cols)
	att_col = np.delete(cols,cols.shape[0]-1,0)
	att_col = np.delete(att_col,att_col.shape[0]-1,0)
	var_mat = dtree.find_variance(D,att_col,mean_mat)
	min_var=np.amax(var_mat)


	print("attributes:")
	print(att)
	print("columns:")
	print(cols)
	print("mean:")
	print(mean_mat)
	print("variance:")
	print(var_mat)
