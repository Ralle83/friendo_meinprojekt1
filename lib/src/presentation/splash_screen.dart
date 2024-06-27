import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:friendo_meinprojekt/src/presentation/sign_in_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        "assets/images/splash_logo.png",
        height: 400,
        width: 400,
      ),
      splashIconSize: 250.00,
      duration: 3000,
      nextScreen: const SigninScreen(),
      backgroundColor: const Color(0xFFFFF5F1),
    );
  }
}
