import 'package:flutter/material.dart';
import 'package:trackie_app/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Trackie());
}

class Trackie extends StatelessWidget {
  const Trackie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trackie',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: WelcomePage(),
    );
  }
}

