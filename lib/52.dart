import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String operation = "Add";
  double result = 0.0;

  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();

  void calculateResult() {
    double num1 = double.tryParse(number1Controller.text) ?? 0.0;
    double num2 = double.tryParse(number2Controller.text) ?? 0.0;

    setState(() {
      switch (operation) {
        case "Add":
          result = num1 + num2;
          break;
        case "Subtraction":
          result = num1 - num2;
          break;
        case "Multiply":
          result = num1 * num2;
          break;
        case "Division":
          result = num1 / num2;
          break;
        default:
          result = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            RadioListTile(
              title: Text("Add"),
              value: "Add",
              groupValue: operation,
              onChanged: (value) {
                setState(() {
                  operation = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Subtraction"),
              value: "Subtraction",
              groupValue: operation,
              onChanged: (value) {
                setState(() {
                  operation = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Multiply"),
              value: "Multiply",
              groupValue: operation,
              onChanged: (value) {
                setState(() {
                  operation = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Division"),
              value: "Division",
              groupValue: operation,
              onChanged: (value) {
                setState(() {
                  operation = value.toString();
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Number 1",
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Number 2",
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                calculateResult();
              },
              child: Text("Calculate"),
            ),
            SizedBox(height: 16.0),
            Text(
              "Result: $result",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
