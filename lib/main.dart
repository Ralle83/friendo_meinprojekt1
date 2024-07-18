import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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

  runApp(MyApp(databaseRepository: databaseRepository));
}

class MyApp extends StatelessWidget {
  final DatabaseRepository databaseRepository;

  MyApp({required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(databaseRepository: databaseRepository),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final DatabaseRepository databaseRepository;

  HomeScreen({required this.databaseRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            List<Map<String, dynamic>> data =
                await databaseRepository.fetchData('1D3h2gEQ9pyS3NsJOUvB');
            print(data); // Hier kannst du die UI entsprechend aktualisieren
          },
          child: Text('Fetch Data'),
        ),
      ),
    );
  }
}
