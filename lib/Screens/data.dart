import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);
  static const routeName = "Data";
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  final _formKey = GlobalKey<FormState>();
  final ageEditingController = TextEditingController();
  final genderEditingController = TextEditingController();
  final chestPainTypeEditingController = TextEditingController();
  final restingBloodPressureEditingController = TextEditingController();
  final serumCholestroalEditingController = TextEditingController();
  final fastingBloodSugarEditingController = TextEditingController();
  final restingElectrocardiographicResultEditingController =
      TextEditingController();
  final maximumHeartRateEditingController = TextEditingController();
  final exerciseInducedAnginaEditingController = TextEditingController();
  final oldPeakEditingController = TextEditingController();
  final slopeofPeakEditingController = TextEditingController();
  final numberofVesselsEditingController = TextEditingController();
  final thalEditingController = TextEditingController();
  bool isLoading = false;

  Future<String> sendData(
      {required int age,
      required int gender,
      required int chestPain,
      required int resetingBp,
      required int serumCholesterol,
      required int fastingBloodSugar,
      required int resetingECG,
      required int maxHR,
      required int exerciseInducedAngina,
      required double oldPeak,
      required int slopeOfPeak,
      required int noOfVessels,
      required int thal}) async {
    var url =
        "http://9136-2401-4900-1c16-42d5-c409-3f0f-ef9b-7877.ngrok.io/disease?age=$age&gender=$gender&chestPain=$chestPain&restingBP=$resetingBp&serumCholesterol=$serumCholesterol&fastingBloodSugar=$fastingBloodSugar&restingECGRes=$resetingECG&maxHR=$maxHR&exerciseInducedAngina=$exerciseInducedAngina&oldPeak=$oldPeak&slopeOfPeak=$slopeOfPeak&noOfVessels=$noOfVessels&thal=$thal";
    var response = await http.get(Uri.parse(url));
    String resp = '';
    if (response.statusCode == 200) {
      resp = jsonDecode(response.body)['message'];
    }
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    //Age field
    final ageField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: ageEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        ageEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Age",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //Gender field
    final genderField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: genderEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        genderEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Gender",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //chest pain type (4 values) field
    final chestPainTypeField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: chestPainTypeEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        chestPainTypeEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "chest pain type (4 values)",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //resting blood pressure field
    final restingBloodPressureField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: restingBloodPressureEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        restingBloodPressureEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Resting Blood Pressure",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //serum cholestoral in mg/dl field
    final serumCholestroalField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: serumCholestroalEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        serumCholestroalEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Serum Cholestoral in mg/dl",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //fasting blood sugar > 120 mg/dl field
    final fastingBloodSugarField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: fastingBloodSugarEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        fastingBloodSugarEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "fasting blood sugar > 120 mg/dl",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //resting electrocardiographic results (values 0,1,2) field
    final restingElectrocardiographicResultField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: restingElectrocardiographicResultEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        restingElectrocardiographicResultEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "resting electrocardiographic results (values 0,1,2)",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //maximum heart rate achieved field
    final maximumHeartRateField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: maximumHeartRateEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        maximumHeartRateEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "maximum heart rate achieved",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //exercise induced angina field
    final exerciseInducedAnginaField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: exerciseInducedAnginaEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        exerciseInducedAnginaEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "exercise induced angina",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //oldpeak = ST depression induced by exercise relative to rest field
    final oldPeakField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: oldPeakEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        oldPeakEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "oldpeak",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //the slope of the peak exercise ST segment field
    final slopeofPeakField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: slopeofPeakEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        slopeofPeakEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "the slope of the peak exercise ST segment field",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //number of major vessels (0-3) colored by flourosopy field
    final numberofVesselsField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: numberofVesselsEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        numberofVesselsEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "number of major vessels",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //thal: field
    final thalField = TextFormField(
      validator: (value) {
        if (value == null || value == "") {
          return "Please enter a value";
        }
        return null;
      },
      autofocus: false,
      controller: thalEditingController,
      keyboardType: TextInputType.number,
      //validator: (){},
      onSaved: (value) {
        thalEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "thal:",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text("Welcome"),
      //   centerTitle: true,
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ageField,
                    const SizedBox(height: 20),
                    genderField,
                    const SizedBox(height: 20),
                    chestPainTypeField,
                    const SizedBox(height: 20),
                    restingBloodPressureField,
                    const SizedBox(height: 20),
                    serumCholestroalField,
                    const SizedBox(height: 20),
                    fastingBloodSugarField,
                    const SizedBox(height: 20),
                    restingElectrocardiographicResultField,
                    const SizedBox(height: 20),
                    maximumHeartRateField,
                    const SizedBox(height: 20),
                    exerciseInducedAnginaField,
                    const SizedBox(height: 20),
                    oldPeakField,
                    const SizedBox(height: 20),
                    slopeofPeakField,
                    const SizedBox(height: 20),
                    numberofVesselsField,
                    const SizedBox(height: 20),
                    thalField,
                    const SizedBox(height: 20),
                    if (isLoading) const CircularProgressIndicator(),
                    if (!isLoading)
                      ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              String s = await sendData(
                                  age: int.parse(ageEditingController.text),
                                  gender:
                                      int.parse(genderEditingController.text),
                                  chestPain: int.parse(
                                      chestPainTypeEditingController.text),
                                  resetingBp: int.parse(
                                      restingBloodPressureEditingController
                                          .text),
                                  serumCholesterol: int.parse(
                                      serumCholestroalEditingController.text),
                                  fastingBloodSugar: int.parse(
                                      fastingBloodSugarEditingController.text),
                                  resetingECG: int.parse(
                                      restingElectrocardiographicResultEditingController
                                          .text),
                                  maxHR: int.parse(
                                      maximumHeartRateEditingController.text),
                                  exerciseInducedAngina: int.parse(exerciseInducedAnginaEditingController.text),
                                  oldPeak: double.parse(oldPeakEditingController.text),
                                  slopeOfPeak: int.parse(slopeofPeakEditingController.text),
                                  noOfVessels: int.parse(numberofVesselsEditingController.text),
                                  thal: int.parse(thalEditingController.text));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text(s)));

                              DateTime date = DateTime.now();
                              String formattedDate =
                                  DateFormat("yyyy-MMM-dd, kk:mm:a")
                                      .format(date);
                              FirebaseFirestore.instance
                                  .collection("Users")
                                  .doc(FirebaseAuth.instance.currentUser!.uid)
                                  .collection("Predictions")
                                  .doc(formattedDate)
                                  .set({
                                "age": ageEditingController.text,
                                "gender": genderEditingController.text,
                                "chestPain":
                                    chestPainTypeEditingController.text,
                                "restingBp":
                                    restingBloodPressureEditingController.text,
                                "serumCholesterol":
                                    serumCholestroalEditingController.text,
                                "fastingBloodSugar":
                                    fastingBloodSugarEditingController.text,
                                "restingECG":
                                    restingElectrocardiographicResultEditingController
                                        .text,
                                "maxHR": maximumHeartRateEditingController.text,
                                "exerciseInducedangina":
                                    exerciseInducedAnginaEditingController.text,
                                "oldPeak": oldPeakEditingController.text,
                                "slopeOfPeak":
                                    slopeofPeakEditingController.text,
                                "numberOfVessels":
                                    numberofVesselsEditingController.text,
                                "thal": thalEditingController.text,
                                "result": s,
                                "dateTime": formattedDate
                              }).then((value) {
                                ageEditingController.text = '';
                                genderEditingController.text = '';
                                chestPainTypeEditingController.text = '';
                                restingBloodPressureEditingController.text = '';
                                serumCholestroalEditingController.text = '';
                                fastingBloodSugarEditingController.text = '';
                                restingElectrocardiographicResultEditingController
                                    .text = '';
                                maximumHeartRateEditingController.text = '';
                                exerciseInducedAnginaEditingController.text =
                                    '';
                                oldPeakEditingController.text = '';
                                slopeofPeakEditingController.text = '';
                                numberofVesselsEditingController.text = '';
                                thalEditingController.text = '';
                                setState(() {
                                  isLoading = false;
                                });
                              });
                            }
                          },
                          child: const Text("Submit"))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
