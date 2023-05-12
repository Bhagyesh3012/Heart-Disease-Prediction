import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score
from sklearn.metrics import confusion_matrix
from sklearn.metrics import classification_report

from Logistic_Regression import Logistic_Regression

heart_data = pd.read_csv('heart.csv')

# # checking no of rows & columns
# print(heart_data.shape)

# # getting info about data
# print(heart_data.info())

# # checking if data is missing or not
# print(heart_data.isnull().sum())

# # statistical measures about the data
# print(heart_data.describe())

# # checking the distribution of Target variable
# print(heart_data['target'].value_counts())

# # splitting the features & target
X = heart_data.drop(columns='target', axis=1)
Y = heart_data['target']
# print(Y)

# # Splitting Training data & Test data
X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.33,
                                                    stratify=Y, random_state=42)
# print(X.shape, X_train.shape, X_test.shape)

# # Model Training
# # Logistic Regression
model = Logistic_Regression(learning_rate=0.0001, no_of_iterations=5000)

# # Training the LogisticRegression model with Training data
model.fit(X_train, Y_train)
# # Model Evaluation
# # Accuracy Score
# # Accuracy on Training data
# X_train_prediction = model.predict(X_train)
# training_data_accuracy = accuracy_score(X_train_prediction, Y_train)
# print('Accuracy on Training data : ', training_data_accuracy)

# # Accuracy on Test data
# X_test_prediction = model.predict(X_test)
# test_data_accuracy = accuracy_score(X_test_prediction, Y_test)
# print('Accuracy on Test data : ', test_data_accuracy)

# # Building a Predictive System
# arr = []
# n = 13
# data = ['age', 'gender', 'chestPain', 'restingBloodPressure', 'serumCholestroal', 'fastingBloodSugar',
# 'restingElectrocardiographicResult',
# 'maximumHeartRate',
# 'exerciseInducedAngina', 'oldPeak', 'slopeofPeak', 'numberofVessels', 'thal']
# for i in range(n):
# x = float(input(f'{data[i]} '))
# arr.append(x)
# print(arr)

input_data = (65,0,3,147,235,1,1,150,1,2.8,2,1,2)

# # change input data to a numpy array
input_data_as_numpy_array = np.asarray(input_data)

# # reshape the numpy array as we are predicting for only one instance
input_data_reshaped = input_data_as_numpy_array.reshape(1, -1)

prediction = model.predict(input_data_reshaped)
print(prediction)

if prediction[0] == 0:
    print('The person does not have heart disease')
else:
    print('The person has heart disease')
