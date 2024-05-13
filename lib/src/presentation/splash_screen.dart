import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:friendo_meinprojekt/src/presentation/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        "assets/images/Splash_screen_logo.png",
        height: 400,
        width: 400,
      ),
      nextScreen: LoginPage(),
      splashIconSize: 250.00,
      duration: 3000,
      backgroundColor: Color(0xFFFFF5F1),
    );
  }
}
