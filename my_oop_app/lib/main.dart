import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Font App',
      theme: ThemeData(
        fontFamily: 'Roboto', // default font family
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Roboto Font Example')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Angelyn Talacay', // Changed text to your name
              style: TextStyle(fontSize: 32), // Increased font size
            ),
            SizedBox(height: 10),
            Text(
              'Bold Roboto Example',
              style: TextStyle(
                fontFamily: 'RobotoBold', // use bold font
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}