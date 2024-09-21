import 'package:flutter/material.dart';

class AddCalculator extends StatelessWidget {
  const AddCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image widget - calculator logo or icon
            Image.asset(
              'assets/images/calculator_icon.png',  // Replace with your image path
              height: 100,
            ),
            const SizedBox(height: 20),

            // Text widget - for instructions or display
            const Text(
              'Enter your numbers:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // TextFormField widgets - for input fields
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'First Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Second Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            // ElevatedButton - for performing calculations
            ElevatedButton(
              onPressed: () {
                // Logic for calculating result goes here
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 20),

            // Text widget - to display the result
            const Text(
              'Result: 0',  // Replace with dynamic result value
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
