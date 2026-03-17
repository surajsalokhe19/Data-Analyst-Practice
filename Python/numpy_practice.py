# Numpy is the python library for numerical computing 

import numpy as np

# a = np.array([1,2,3,4,5]) # Creating a numpy array from a list
# print(a)

# print(a.dtype) # To check the data type of the array elements

# print(a.astype('float')) # To change the data type of the array elements



# matrix form in numpy

# b = np.array([[1,2],[4,5],[7,9]]) # Creating a 2D array (matrix) from a list of lists
# print(b)

# print(b.ndim) # To check the dimension of the array
# it depends on the number of square brackets used to create the array

# # print(b.shape) # To check the shape of the array (number of rows and columns)

# print(b.size) # To check the total number of elements in the array

# print(b.reshape(2,3)) # To change the shape of the array to 2 rows and 3 columns

# print(np.ones((3,4))) # To create an array of ones with specified shape (3 rows and 4 columns)
# by default it will create an array of float data type

# print(np.zeros((2,5))) # To create an array of zeros with specified shape (2 rows and 5 columns)

# print(np.arange(1,10,2)) # To create an array of evenly spaced values within a specified range (start, stop, step)

# print(np.linspace(0,10,500)) # To create an array of evenly spaced values between a specified start and stop value (start, stop, number of values)