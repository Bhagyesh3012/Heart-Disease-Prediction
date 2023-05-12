import numpy as np


class Logistic_Regression():
    # declaring learning rate & number of iterations(Hyper-parameters)
    def __init__(self, learning_rate, no_of_iterations):
        self.learning_rate = learning_rate
        self.no_of_iterations = no_of_iterations

    # fit function to train the model with dataset
    def fit(self, X, Y):
        # number of data points in the dataset(number of rows)--> m
        # number of input features in the dataset(number of columns)--> n
        self.m, self.n = X.shape

        # initiate weight and bias value
        self.w = np.zeros(self.n)
        self.b = 0
        self.X = X
        self.Y = Y

        # implementing gradient descent for optimization
        for i in range(self.no_of_iterations):
            self.update_weights()

    def update_weights(self):
        # sigmoid function
        Y_ = 1 / (1 + np.exp(-(self.X.dot(self.w) + self.b)))  # wX+b

        # derivatives
        dw = (1 / self.m * np.dot(self.X.T, (Y_ - self.Y)))
        db = (1 / self.m) * np.sum(Y_ - self.Y)

        # updating the weights and bias using gradient descent
        self.w = self.w - self.learning_rate * dw
        self.b = self.b - self.learning_rate * db

    # sigmoid equation & decision boundary
    def predict(self, x):
        Y_pred = 1 / (1 + np.exp(-(x.dot(self.w) + self.b)))  # wX+b
        Y_pred = np.where(Y_pred > 0.5, 1, 0)
        return Y_pred
