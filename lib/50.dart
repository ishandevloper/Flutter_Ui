import 'package:flutter/material.dart';

void main() {
  runApp(ReverseNumberApp());
}

class ReverseNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reverse Number App',
      home: ReverseNumberScreen(),
    );
  }
}

class ReverseNumberScreen extends StatefulWidget {
  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<ReverseNumberScreen> {
  TextEditingController _inputController = TextEditingController();
  String _reverseNumber = '';

  void _reverseInputNumber() {
    if (_inputController.text.isNotEmpty) {
      int? number = int.tryParse(_inputController.text);
      if (number != null) {
        setState(() {
          _reverseNumber = number.toString().split('').reversed.join();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _inputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _reverseInputNumber,
                child: Text('Reverse'),
              ),
              SizedBox(height: 16),
              Text(
                'Reversed Number: $_reverseNumber',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
