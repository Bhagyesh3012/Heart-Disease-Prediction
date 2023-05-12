import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:heart_disease_prediction/Screens/dashboard.dart';
import 'package:heart_disease_prediction/Screens/data.dart';
import 'package:heart_disease_prediction/Screens/heart_disease_tab.dart';
import 'package:heart_disease_prediction/Screens/login.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = "home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                  text: "Info",
                ),
                Tab(
                  text: "Prediction",
                ),Tab(text: "Dashboard",)
              ]),
              actions: [
                IconButton(
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance.signOut().then((value) =>
                            Navigator.pushReplacementNamed(
                                context, Login.routeName));
                      } on FirebaseAuthException catch (err) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(err.code)));
                      }
                    },
                    icon: const Icon(Icons.logout))
              ],
              title: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("Users")
                    .doc(FirebaseAuth.instance.currentUser!.uid)
                    .snapshots(),
                builder: (ctx, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  return Text("Welcome ${snapshot.data!.get('name')}");
                },
              )),
          body: TabBarView(
            children: [HeartDiseaseTab(), const Data(),Dashboard()],
          )),
    );
  }
}
