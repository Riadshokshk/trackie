import 'package:flutter/material.dart';
import 'package:trackie_app/welcome.dart';

void main() {
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

