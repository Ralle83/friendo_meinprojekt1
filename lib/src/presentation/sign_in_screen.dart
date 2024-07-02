import 'package:flutter/material.dart';

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
              //Image.asset(
              // "l",// Das Bild sollte in deinem assets-Ordner sein
              //  height: 150,
              // ),
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
                  backgroundColor: Color(0xFFF43AA8B),
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
  const LoginScreen(
      {super.key,
      required this.databaseRepository,
      required this.authRepository});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
@override
Widget build(BuildContext context) {
final loginScreen = LoginScreen(
databaseRepository: databaseRepository, authRepository:
authRepository);
final overviewScreen = OverviewScreen(
databaseRepository: databaseRepository, authRepository:
authRepository);
const loginKey = ValueKey('loginScreen');
const overviewKey = ValueKey('overviewScreen');
return StreamBuilder(
stream: authRepository.authStateChanges,
builder: (context, snapshot) {
final user = snapshot.data;
return MaterialApp(
key: user == null ? loginKey : overviewKey,
theme: lightTheme,
darkTheme: darkTheme,
themeMode: ThemeMode.light,
home: user == null ? loginScreen : overviewScreen,
);
},
);