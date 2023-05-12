import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:heart_disease_prediction/Screens/home.dart';
import 'package:heart_disease_prediction/Screens/prediction_details_screen.dart';
import 'package:heart_disease_prediction/Screens/registration.dart';
import 'Screens/data.dart';
import 'Screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'data',
      home: const Login(),
      routes: {
        Login.routeName: (context) => const Login(),
        Registration.routeName: (context) => const Registration(),
        Data.routeName: (context) => const Data(),
        Home.routeName: (context) => const Home(),
        PredictionDetailsScreen.routeName : (context)=> PredictionDetailsScreen()
      },
    );
  }
}
