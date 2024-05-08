import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5F1), // Hintergrundfarbe des Splash Screens
      body: Center(
        child: Image.asset('assets/images/Logo.png'), // App-Logo
      ),
    );
  }
}
