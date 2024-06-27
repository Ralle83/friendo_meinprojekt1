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
                SizedBox(height: 20),
                Text(
                  'Welcome to friendo!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  'Max Mustermann',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 20),
                Divider(color: Colors.teal),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.teal.shade100,
                  child: Icon(
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
                      icon: Icon(Icons.info, color: Colors.teal, size: 40),
                      onPressed: () {
                        // Handle info button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.settings, color: Colors.teal, size: 40),
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
                      icon: Icon(Icons.search, color: Colors.teal, size: 40),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.message, color: Colors.teal, size: 40),
                      onPressed: () {
                        // Handle message button press
                      },
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 40),
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
