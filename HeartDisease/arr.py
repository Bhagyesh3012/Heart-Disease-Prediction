arr = []
n = 13
data = ['age', 'gender', 'chestPain', 'restingBloodPressure', 'serumCholestroal', 'fastingBloodSugar',
        'restingElectrocardiographicResult',
        'maximumHeartRate',
        'exerciseInducedAngina', 'oldPeak', 'slopeofPeak', 'numberofVessels', 'thal']
for i in range(n):
    x = int(input(f'{data[i]} '))
    arr.append(x)
print(arr)


