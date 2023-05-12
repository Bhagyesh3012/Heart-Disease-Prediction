from flask import request as request, jsonify
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
# from sklearn.metrics import accuracy_score

from flask_ngrok import run_with_ngrok

from flask import Flask

from Logistic_Regression import Logistic_Regression

app = Flask(__name__)
run_with_ngrok(app)


@app.route('/disease')
def getDisease():
    heart_data = pd.read_csv('heart.csv')

    X = heart_data.drop(columns='target', axis=1)
    Y = heart_data['target']

    X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.33,
                                                        stratify=Y, random_state=42)

    model = Logistic_Regression(learning_rate=0.0001, no_of_iterations=1000)

    model.fit(X_train, Y_train)

    # X_train_prediction = model.predict(X_train)
    # training_data_accuracy = accuracy_score(X_train_prediction, Y_train)

    # X_test_prediction = model.predict(X_test)
    # test_data_accuracy = accuracy_score(X_test_prediction, Y_test)

    age = request.args.get('age')
    gender = request.args.get('gender')
    chestPain = request.args.get('chestPain')
    restingBP = request.args.get('restingBP')
    serumCholesterol = request.args.get('serumCholesterol')
    fastingBloodSugar = request.args.get('fastingBloodSugar')
    restingECGRes = request.args.get('restingECGRes')
    maxHR = request.args.get('maxHR')
    exerciseInducedAngina = request.args.get('exerciseInducedAngina')
    oldPeak = request.args.get('oldPeak')
    slopeOfPeak = request.args.get('slopeOfPeak')
    noOfVessels = request.args.get('noOfVessels')
    thal = request.args.get('thal')

    arr = [age, gender, chestPain, restingBP, serumCholesterol, fastingBloodSugar, restingECGRes, maxHR,
           exerciseInducedAngina, oldPeak, slopeOfPeak, noOfVessels, thal]

    input_data_as_numpy_array = np.asarray(arr)
    converted_array = input_data_as_numpy_array.astype(float)

    input_data_reshaped = converted_array.reshape(1, -1)

    prediction = model.predict(input_data_reshaped)
    print(prediction)

    if prediction[0] == 0:
        return jsonify({"message": "The person does not have heart disease"})
    else:
        return jsonify({"message": 'The person has heart disease'})


if __name__ == "__main__":
    app.run()
