# Pandas is used for data manipulation and analysis in Python.
# pip install pandas # Used to install pandas library in terminal or command prompt


# Used manual data and also used data from CSV file to create DataFrame and perform various operations on it.

# import pandas as pd
# a = [1,2,3,4,5]
# s = pd.Series(a) # Creating a Pandas Series from a list 
# print(s) 



# Creating DataFrame from dictionary

# import pandas as pd
# data = {
#     'Name': ['Rushi', 'Neha', 'Chetan', 'Suraj'],
#     'Age': [24, 22, 23, 25],
#     'City': ['Mumbai', 'Pune', None, 'Delhi']
# }   
# df = pd.DataFrame(data) # Creating a DataFrame from a dictionary
# # print(df)


# Marks = [85, 90, 78, 92] # Adding new column to DataFrame
# df['Marks'] = Marks

# print(df)


# print(df.iloc[0:1, 0:2])  # Access specific rows and columns using iloc (index-based)

# print(df.isnull())  # Check for missing values in the DataFrame

# print (df.fillna({'City': 'Unknown'}))  # Fill missing values with a specified value

# print (df.fillna({'City': 'Pune'})) # Fill missing values with a specified value



# Reading CSV file using pandas 

import pandas as pd
df = pd.read_csv('DataSet.csv') # Used to raed data from CSV files


# print(df.head(10))  # Display first 10 rows

# print(df.tail(5))  # Display last 5 rows

# print(df.columns)  # Display column names

# print(df.shape)  # Display number of rows and columns

# print(df.info())  # Display summary information about the DataFrame
# NaN will be treated as null value

# print (df.drop("Unnamed: 0", axis=1, inplace= True))  # Drop rows with missing values

# print(df.describe())  # Display statistical summary of numerical columns in statistics like mean, median, standard deviation, etc.

# print(df.sample(5))  # Display random sample of 5 rows 

# print(df[(df['Age'] > 25) & (df['Salary'] > 50000)])  # Filter rows based on a condition

# print(df.loc[4, 'Age'])  # Access specific rows and columns using loc 4 is the index (rowwise) and 'Age' is the column name

# print(df.iloc[0, 1])  # Access specific rows and columns 0 is the index of row and 1 is the index of column (index-based)

# print(df['Age'].mean())  # Calculate mean of a column

# print(df['Salary'] * 1.1)  # Can perform operations on columns to modify

# print(df.groupby('Education Level').agg({'Job Title': 'count', 'Salary': 'mean'})) # Group data by a column and perform aggregate functions




# Practice merging DataFrames in pandas
# import pandas as pd

# # Create first DataFrame
# df1 = pd.DataFrame ({
#     'ID': [1, 2, 3, 4],
#     'Name':['Alice ', 'Bob', 'Charlie', 'David']
# })  


# # Create second DataFrame
# df2 = pd.DataFrame ({
#     'ID': [3, 4, 5, 6],
#     'Score': [85, 90, 78, 92]   
# })  


# # Merge DataFrames on 'ID' column
# merged_df = pd.merge(df1, df2, on='ID', how='inner')
# print(merged_df)

# # Combine DataFrames using concat
# concat_df = pd.concat([df1, df2])
# print(concat_df)

# # Left join 
# left_join_df = pd.merge(df1, df2, on='ID', how='left')
# print(left_join_df)

# right join    
# right_join_df = pd.merge(df1, df2, on='ID', how='right')    
# print(right_join_df)