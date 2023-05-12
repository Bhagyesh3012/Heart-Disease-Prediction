import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:heart_disease_prediction/Screens/prediction_details_screen.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: FirebaseFirestore.instance.collection("Users").doc(FirebaseAuth.instance.currentUser!.uid).collection("Predictions").orderBy("dateTime").snapshots()
          ,builder: (ctx, AsyncSnapshot<QuerySnapshot> snapshot) {
        if(snapshot.hasData){
          if(snapshot.data!.docs.isEmpty){
            return  Column(
              mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.announcement_outlined),
                    Text("No data found")
                  ],
            );
          }
          return ListView.builder(itemCount: snapshot.data!.size,itemBuilder: (cont,pos){
            return Padding(
                padding: const EdgeInsets.only(top: 10),
            child: predictionListItem(context: context,dateTime: snapshot.data!.docs[pos]['dateTime'],snapshot: snapshot.data!.docs[pos]));
          });
        }else{
          return Container();
        }
      }
    );
  }

  Widget predictionListItem({required String dateTime,required BuildContext context,required QueryDocumentSnapshot snapshot}) {
    return Padding(
      padding: const EdgeInsets.only(right: 12,left: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(PredictionDetailsScreen.routeName,arguments: PredictionArguements(snapshot['age'], snapshot['chestPain'], dateTime, snapshot['exerciseInducedangina'], snapshot['fastingBloodSugar'],snapshot['gender'], snapshot['maxHR'], snapshot['numberOfVessels'], snapshot['oldPeak'], snapshot['restingBp'], snapshot['restingECG'], snapshot['result'], snapshot['serumCholesterol'], snapshot['slopeOfPeak'], snapshot['thal']));
        },
        child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                children: [
                  Text(dateTime),
                  const Expanded(child: Align(alignment: Alignment.centerRight,child: Icon(Icons.arrow_right)))
                ],
            ),
          ),
        ),
      ),
    );
  }
}
