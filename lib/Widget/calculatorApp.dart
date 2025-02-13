import 'package:flutter/material.dart';

import 'buildButton.dart';

class Calculatorapp extends StatefulWidget {
  const Calculatorapp({Key? key})
      : super(key: key); // Corrected super constructor call

  @override
  State<Calculatorapp> createState() => _CalculatorappState();
}

class _CalculatorappState extends State<Calculatorapp> {
  String _output = "0"; // Displayed output
  String _input = ""; // Current input string
  String operand = ''; // The operator (+, -, *, /)
  double num1 = 0; // First number for calculation
  double num2 = 0; // Second number for calculation

  // Function to handle button presses
  void _buttonPressed(String value) {
    setState(() {
      if (value == 'C') {
        // Clear everything
        _output = "0";
        _input = "";
        operand = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '=') {
        // Perform calculation
        if (_input.isNotEmpty) {
          // Check if _input is empty to avoid parsing error
          num2 = double.parse(_input);

          if (operand == '+') {
            _output = (num1 + num2).toString();
          } else if (operand == '-') {
            _output = (num1 - num2).toString();
          } else if (operand == 'X') {
            _output = (num1 * num2).toString();
          } else if (operand == '/') {
            _output = (num2 != 0)
                ? (num1 / num2).toString()
                : 'Error'; // Avoid division by zero
          }
          num1 = double.tryParse(_output) ??
              0; // Store result for next calculation, handle potential errors
          _input = ''; // Clear _input after calculation
        }
      } else if (['+', '-', 'X', '/'].contains(value)) {
        // Operator pressed
        if (_input.isNotEmpty) {
          // Only parse if there's an input value
          num1 = double.parse(_input);
          operand = value;
          _input = ''; // Clear _input to prepare for the next number
        } else if (_output != '0') {
          // Use the current output as the first number if no input
          num1 = double.parse(_output);
          operand = value;
          _input = '';
        }
      } else {
        // Number pressed
        _input += value;
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculator App"), // Added const
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(24), // Added const
                child: Text(
                  _output,
                  style: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold), // Added const
                ),
              ),
            ),
            Row(
              children: [
                buildButton(
                  text: "7",
                  onClick: () => _buttonPressed('7'),
                ),
                buildButton(
                  text: "8",
                  onClick: () => _buttonPressed('8'),
                ),
                buildButton(
                  text: "9",
                  onClick: () => _buttonPressed('9'),
                ),
                buildButton(
                  text: "/",
                  color: Colors.orange,
                  onClick: () => _buttonPressed('/'),
                ),
              ],
            ),
            Row(
              children: [
                buildButton(
                  text: "4",
                  onClick: () => _buttonPressed('4'),
                ),
                buildButton(
                  text: "5",
                  onClick: () => _buttonPressed('5'),
                ),
                buildButton(
                  text: "6",
                  onClick: () => _buttonPressed('6'),
                ),
                buildButton(
                  text: "X",
                  color: Colors.orange,
                  onClick: () => _buttonPressed('X'),
                ),
              ],
            ),
            Row(
              children: [
                buildButton(
                  text: "1",
                  onClick: () => _buttonPressed('1'),
                ),
                buildButton(
                  text: "2",
                  onClick: () => _buttonPressed('2'),
                ),
                buildButton(
                  text: "3",
                  onClick: () => _buttonPressed('3'),
                ),
                buildButton(
                  text: "-",
                  color: Colors.orange,
                  onClick: () => _buttonPressed('-'),
                ),
              ],
            ),
            Row(
              children: [
                buildButton(
                  text: "C",
                  color: Colors.red,
                  onClick: () => _buttonPressed('C'),
                ),
                buildButton(
                  text: "0",
                  onClick: () => _buttonPressed('0'),
                ),
                buildButton(
                  text: "=",
                  color: Colors.green,
                  onClick: () => _buttonPressed('='),
                ),
                buildButton(
                  text: "+",
                  color: Colors.orange,
                  onClick: () => _buttonPressed('+'),
                ),
              ],
            ),
          ],
        ));
  }
}
