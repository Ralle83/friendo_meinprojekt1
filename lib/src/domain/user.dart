import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
  Widget build(BuildContext context) {
    UserRepository userRepository = Provider.of<UserRepository>(context);
    
    class UserRepository; {
    }