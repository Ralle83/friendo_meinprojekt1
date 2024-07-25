import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:friendo_meinprojekt/src/app.dart';

class DatabaseRepository {
  final FirebaseFirestore firestore;

  DatabaseRepository({required this.firestore});

  // Beispielmethode zum Abrufen von Daten aus einer Firestore-Sammlung
  Future<List<Map<String, dynamic>>> fetchData(String collectionPath) async {
    try {
      QuerySnapshot querySnapshot =
          await firestore.collection(collectionPath).get();
      return querySnapshot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  DatabaseRepository databaseRepository =
      DatabaseRepository(firestore: firestore);

  runApp(MyApp());
}
