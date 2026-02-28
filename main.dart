import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Dark aesthetic
      home: Scaffold(
        appBar: AppBar(title: const Text("Code.IT EcoGuard")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Current AQI", style: TextStyle(fontSize: 24)),
              const Text("342", style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.redAccent)),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.black12,
                child: const Text("Recommendation: Avoid outdoor activities. Enable Air Purifier."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}