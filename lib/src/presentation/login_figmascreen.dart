import 'package:flutter/material.dart';

class LoginFigmaScreen extends StatefulWidget {
  const LoginFigmaScreen({super.key});

  @override
  State<LoginFigmaScreen> createState() => _LoginFigmaScreenState();
}

class _LoginFigmaScreenState extends State<LoginFigmaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/Logo.png"),
          const Text("Signin"),
          const SizedBox(height: 20),
          const Text("Email"),
          TextFormField(),
          const SizedBox(),
          const Text("Passwort"),
          TextFormField(),
          const SizedBox(),
          const Text("Passwort vergessen?"),
          const SizedBox(),
          Container(
            width: 300,
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 105, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFF43AA8B),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w400,
                    height: 0.06,
                    letterSpacing: 0.15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Divider(
                color: Colors.black,
                height: 10,
              ),
              Text("or"),
              Divider(
                color: Colors.black,
                height: 10,
                thickness: 5,
                indent: 5,
                endIndent: 5,
              )
            ],
          )
        ],
      ),
    );
  }
}
