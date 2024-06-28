import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:friendo_meinprojekt/firebase_options.dart';
import 'package:friendo_meinprojekt/src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
