import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Add navigation logic here
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.teal[100],
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.info, color: Colors.teal, size: 30),
                  onPressed: () {
                    // Add info button logic here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.teal, size: 30),
                  onPressed: () {
                    // Add settings button logic here
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search, color: Colors.teal, size: 30),
                  onPressed: () {
                    // Add search button logic here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.chat, color: Colors.teal, size: 30),
                  onPressed: () {
                    // Add chat button logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
