import 'package:flutter/material.dart';
import 'features/add_calculator.dart';  // Ensure the correct file path is imported

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AddCalculator(),  // Ensure AddCalculator is referenced here
    );
  }
}
