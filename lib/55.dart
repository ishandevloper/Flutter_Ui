import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Text Display',
      home: CheckboxTextDisplayScreen(),
    );
  }
}

class CheckboxTextDisplayScreen extends StatefulWidget {
  @override
  _CheckboxTextDisplayScreenState createState() =>
      _CheckboxTextDisplayScreenState();
}

class _CheckboxTextDisplayScreenState extends State<CheckboxTextDisplayScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Text Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isChecked)
              Text(
                'This is a displayed text!',
                style: TextStyle(fontSize: 20),
              ),
            SizedBox(height: 20),
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
