import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseRepository {
  final FirebaseFirestore firestore;

  DatabaseRepository({required this.firestore});

  // Füge hier Methoden für den Datenbankzugriff hinzu
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
  }.
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
        child: Text('Firestore is initialized'),
      ),
    );
  }
}
