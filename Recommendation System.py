
# coding: utf-8

# In[11]:


import pandas as pd
get_ipython().run_line_magic('matplotlib', 'inline')
import matplotlib
import matplotlib.pyplot as plt
import numpy as np

# pass in column names for each CSV as the column name is not given in the file and read them using pandas.
# You can check the column names from the readme file

#Reading users file:

users = pd.read_csv('test.csv')
users.head()


# In[5]:


pwd


# In[13]:


import pandas as pd
u_cols = ['user_id', 'age', 'sex', 'occupation', 'zip_code']
users = pd.read_csv('ml-100k/u.user', sep='|', names=u_cols,encoding='latin-1')
users.head()


# In[20]:


import pandas as pd
get_ipython().run_line_magic('matplotlib', 'inline')
import matplotlib
import matplotlib.pyplot as plt
import numpy as np


#Reading EmployeeSkills CSV file:

employee_data = pd.read_csv('EmployeeSkills.csv')
feedback_data = pd.read_csv('Feedback.csv')
course_data = pd.read_csv('CourseDataset.csv')

print(employee_data.shape)
employee_data.head()

print(feedback_data.shape)
feedback_data.head()

print(course_data.shape)
course_data.head()

n_users = feedback_data.Employee_Id.unique().shape[0]
n_items = course_data.Course_Id.unique().shape[0]

data_matrix = np.zeros((n_users, n_items))

for line in feedback_data.itertuples(): 
    data_matrix[line[1]-1, line[2]-1] = line[3]
    
from sklearn.metrics.pairwise import pairwise_distances 
user_similarity = pairwise_distances(data_matrix, metric='cosine')
item_similarity = pairwise_distances(data_matrix.T, metric='cosine')

def predict(feedback_data, similarity, type='user'):
    if type == 'user':
        mean_user_rating = feedback_data.mean(axis=1)
        #We use np.newaxis so that mean_user_rating has same format as ratings
        ratings_diff = (feedback_data - mean_user_rating[:, np.newaxis])
        pred = mean_user_rating[:, np.newaxis] + similarity.dot(ratings_diff) / np.array([np.abs(similarity).sum(axis=1)]).T
    elif type == 'item':
        pred = feedback_data.dot(similarity) / np.array([np.abs(similarity).sum(axis=1)])
    return pred

user_prediction = predict(data_matrix, user_similarity, type='user')
item_prediction = predict(data_matrix, item_similarity, type='item')

print(user_prediction)
print("-------------------------------------------------------------")
print(item_prediction)

