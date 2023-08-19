import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Picker',
      home: ColorPickerScreen(),
    );
  }
}

class ColorPickerScreen extends StatefulWidget {
  @override
  _ColorPickerScreenState createState() => _ColorPickerScreenState();
}

class _ColorPickerScreenState extends State<ColorPickerScreen> {
  Color _selectedColor = Colors.red;

  void _handleColorChange(Color newColor) {
    setState(() {
      _selectedColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: _selectedColor,
            ),
          ),
          SizedBox(height: 20),
          RadioListTile<Color>(
            title: Text('Red'),
            value: Colors.red,
            groupValue: _selectedColor,
            onChanged: (value) => _handleColorChange(value!),
          ),
          RadioListTile<Color>(
            title: Text('Blue'),
            value: Colors.blue,
            groupValue: _selectedColor,
            onChanged: (value) => _handleColorChange(value!),
          ),
          RadioListTile<Color>(
            title: Text('Green'),
            value: Colors.green,
            groupValue: _selectedColor,
            onChanged: (value) => _handleColorChange(value!),
          ),
        ],
      ),
    );
  }
}
