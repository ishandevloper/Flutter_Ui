import 'package:flutter/material.dart';

void main() {
  runApp(NumberRangeApp());
}

class NumberRangeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Range App',
      home: InputNumbersScreen(),
    );
  }
}

class InputNumbersScreen extends StatelessWidget {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _firstNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter first number',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _secondNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter second number',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  int? firstNumber = int.tryParse(_firstNumberController.text);
                  int? secondNumber = int.tryParse(_secondNumberController.text);

                  if (firstNumber != null && secondNumber != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NumberListScreen(
                          startNumber: firstNumber,
                          endNumber: secondNumber,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Show Numbers'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberListScreen extends StatelessWidget {
  final int startNumber;
  final int endNumber;

  NumberListScreen({required this.startNumber, required this.endNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];

    for (int i = startNumber; i <= endNumber; i++) {
      numbers.add(i);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Number List'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(numbers[index].toString()),
              );
            },
          ),
        ),
      ),
    );
  }
}
