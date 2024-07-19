import 'package:flutter/material.dart';

// Dummy Klassen um den Code funktionsfähig zu machen
class DatabaseRepository {}

class AuthRepository {
  Stream<String?> get authStateChanges => Stream.value(null);
}

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAEBD7),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                "assets/images/logo.png",
              ),
              const SizedBox(height: 50),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                      0xFFF43AA8B), // Hier sollte const Color verwendet werden
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                ),
                child: const Text('Continue'),
              ),
              const SizedBox(height: 20),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.purple,
                    ),
                  ),
                  Text(" or "),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: IconButton(
                  icon: Image.asset(
                      'assets/images/google_icon.png'), // Google Icon
                  iconSize: 40,
                  onPressed: () {
                    // TODO: Implement Google Sign in
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  // Attribute
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;

  // Konstruktor
  const LoginScreen({
    super.key,
    required this.databaseRepository,
    required this.authRepository,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Implementiere hier deine Build-Methode
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Text('Login Screen Content'),
      ),
    );
  }
}

class OverviewScreen extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;

  const OverviewScreen({
    super.key,
    required this.databaseRepository,
    required this.authRepository,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Overview Screen'),
      ),
      body: Center(
        child: Text('Overview Screen Content'),
      ),
    );
  }
}

void main() {
  final DatabaseRepository databaseRepository = DatabaseRepository();
  final AuthRepository authRepository = AuthRepository();

  runApp(MyApp(
    databaseRepository: databaseRepository,
    authRepository: authRepository,
  ));
}

class MyApp extends StatelessWidget {
  final DatabaseRepository databaseRepository;
  final AuthRepository authRepository;

  const MyApp({
    super.key,
    required this.databaseRepository,
    required this.authRepository,
  });

  @override
  Widget build(BuildContext context) {
    final loginScreen = LoginScreen(
      databaseRepository: databaseRepository,
      authRepository: authRepository,
    );
    final overviewScreen = OverviewScreen(
      databaseRepository: databaseRepository,
      authRepository: authRepository,
    );
    const loginKey = ValueKey('loginScreen');
    const overviewKey = ValueKey('overviewScreen');

    return StreamBuilder<String?>(
      stream: authRepository.authStateChanges,
      builder: (context, snapshot) {
        final user = snapshot.data;
        return MaterialApp(
          key: user == null ? loginKey : overviewKey,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.light,
          home: user == null ? loginScreen : overviewScreen,
        );
      },
    );
  }
}
