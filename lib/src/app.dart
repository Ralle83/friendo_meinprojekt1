import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:friendo_meinprojekt/src/presentation/login_screen.dart';
import 'package:friendo_meinprojekt/src/presentation/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
            // AnimatedSplashScreen(
            //   duration: 10000,
            //   splash: SplashScreen(),
            //   nextScreen: LoginPage(),
            // ),
            SplashScreen());
  }
}
