import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trackie_app/home_screen.dart';
import 'package:trackie_app/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // SVG background that scales with correct ratio
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: screenWidth,
                height: screenHeight,
                child: Image.asset(
                  'assets/images/welcome3.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Optional overlay
          Container(color: Colors.black.withOpacity(0.3)),

          // Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEAE6FD),
                  foregroundColor: const Color(0xFF6983FA),
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Color(0xFF6983FA)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

