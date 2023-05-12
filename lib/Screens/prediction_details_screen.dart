import 'package:flutter/material.dart';

class PredictionArguements {
  String age = "",
      chestPain = "",
      dateTime = "",
      exerciseInducedAngina = "",
      fastingBloodSugar = "",
      gender = "",
      maxHr = "",
      numberOfVessels = "",
      oldPeak = "",
      restingBp = "",
      restingECG = "",
      result = "",
      serumCholesterol = "",
      slopeOfPeak = "",
      thal = "";
  PredictionArguements(
      this.age,
      this.chestPain,
      this.dateTime,
      this.exerciseInducedAngina,
      this.fastingBloodSugar,
      this.gender,
      this.maxHr,
      this.numberOfVessels,
      this.oldPeak,
      this.restingBp,
      this.restingECG,
      this.result,
      this.serumCholesterol,
      this.slopeOfPeak,
      this.thal);
}

class PredictionDetailsScreen extends StatelessWidget {
  static const routeName = 'Prediction';

  Widget textWidget(String text) {
    return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as PredictionArguements;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              textWidget("Age = " + args.age),
              const Divider(),
              textWidget("gender = " + args.gender),
              const Divider(),
              textWidget("chestPain = " + args.chestPain),
              const Divider(),
              textWidget(
                  "exerciseInducedAngina = " + args.exerciseInducedAngina),
              const Divider(),
              textWidget("fastingBloodSugar = " + args.fastingBloodSugar),
              const Divider(),
              textWidget("maxHr = " + args.maxHr),
              const Divider(),
              textWidget("numberOfVessels = " + args.numberOfVessels),
              const Divider(),
              textWidget("oldPeak = " + args.oldPeak),
              const Divider(),
              textWidget("restingBp = " + args.restingBp),
              const Divider(),
              textWidget("restingECG = " + args.restingECG),
              const Divider(),
              textWidget("serumCholesterol = " + args.serumCholesterol),
              const Divider(),
              textWidget("slopeOfPeak = " + args.slopeOfPeak),
              const Divider(),
              textWidget("thal = " + args.thal),
              const Divider(),
              textWidget("result = " + args.result),
            ],
          ),
        ),
      ),
    );
  }
}
