import 'package:flutter/material.dart';

class AddCalculator extends StatefulWidget {
  const AddCalculator({super.key});

  @override
  AddCalculatorState createState() => AddCalculatorState();
}

class AddCalculatorState extends State<AddCalculator> {
  String _result = '0';

  // Function to handle button press
  void _onButtonPressed(String value) {
    setState(() {
      _result += value;
    });
  }

  // Function to handle clearing the input
  void _clear() {
    setState(() {
      _result = '0';
    });
  }

  // Function to handle equals button (logic to evaluate the expression goes here)
  void _calculate() {
    setState(() {
      // Add calculation logic here
      _result = 'Result';
    });
  }

  // Function to build calculator buttons
  Widget buildButton(String text, {Function()? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed ?? () => _onButtonPressed(text),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.grey[800], padding: const EdgeInsets.all(24),   // Button text color
        textStyle: const TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        title: const Text('Scientific Calculator'),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Display Result
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[900],
              ),
              child: Text(
                _result,
                style: const TextStyle(fontSize: 48, color: Colors.blueAccent),
              ),
            ),
            const SizedBox(height: 20),

            // Grid of Calculator Buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 6, // More columns for scientific functions
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  // First Row: Rad, Deg, x!, %, (, ), AC
                  buildButton('Rad'),
                  buildButton('Deg'),
                  buildButton('x!'),
                  buildButton('('),
                  buildButton(')'),
                  buildButton('%'),
                  buildButton('AC', onPressed: _clear),

                  // Second Row: sin, cos, tan, 7, 8, 9, ÷
                  buildButton('sin'),
                  buildButton('cos'),
                  buildButton('tan'),
                  buildButton('7'),
                  buildButton('8'),
                  buildButton('9'),
                  buildButton('÷'),

                  // Third Row: log, ln, √, 4, 5, 6, ×
                  buildButton('log'),
                  buildButton('ln'),
                  buildButton('√'),
                  buildButton('4'),
                  buildButton('5'),
                  buildButton('6'),
                  buildButton('×'),

                  // Fourth Row: π, e, x², 1, 2, 3, -
                  buildButton('π'),
                  buildButton('e'),
                  buildButton('x²'),
                  buildButton('1'),
                  buildButton('2'),
                  buildButton('3'),
                  buildButton('-'),

                  // Fifth Row: Ans, EXP, 0, ., =, +
                  buildButton('Ans'),
                  buildButton('EXP'),
                  buildButton('0'),
                  buildButton('.'),
                  buildButton('=', onPressed: _calculate),
                  buildButton('+'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
