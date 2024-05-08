import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      height: 250, width: 250,
      'assets/images/Logo.png',
      fit: BoxFit.fill, // App-Logo
    );
  }
}
