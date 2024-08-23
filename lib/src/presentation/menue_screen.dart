import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menüseite',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Welcome to friendo!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const Text(
                  'Max Mustermann',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(color: Colors.teal),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.teal.shade100,
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon:
                          const Icon(Icons.info, color: Colors.teal, size: 40),
                      onPressed: () {
                        // Handle info button press
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings,
                          color: Colors.teal, size: 40),
                      onPressed: () {
                        // Handle settings button press
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search,
                          color: Colors.teal, size: 40),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.message,
                          color: Colors.teal, size: 40),
                      onPressed: () {
                        // Handle message button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 40),
              onPressed: () {
                // Handle back button press
              },
            ),
          ],
        ),
      ),
    );
  }
}
