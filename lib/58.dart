import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color SeekBar',
      home: ColorSeekBarScreen(),
    );
  }
}

class ColorSeekBarScreen extends StatefulWidget {
  @override
  _ColorSeekBarScreenState createState() => _ColorSeekBarScreenState();
}

class _ColorSeekBarScreenState extends State<ColorSeekBarScreen> {
  double _redValue = 0.0;
  double _greenValue = 0.0;
  double _blueValue = 0.0;

  Color _getBackgroundColor() {
    return Color.fromARGB(255, _redValue.toInt(), _greenValue.toInt(), _blueValue.toInt());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color SeekBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: _getBackgroundColor(),
            ),
            SizedBox(height: 20),
            Slider(
              value: _redValue,
              onChanged: (value) {
                setState(() {
                  _redValue = value;
                });
              },
              min: 0.0,
              max: 255.0,
              divisions: 255,
              label: 'Red: ${_redValue.toInt()}',
            ),
            Slider(
              value: _greenValue,
              onChanged: (value) {
                setState(() {
                  _greenValue = value;
                });
              },
              min: 0.0,
              max: 255.0,
              divisions: 255,
              label: 'Green: ${_greenValue.toInt()}',
            ),
            Slider(
              value: _blueValue,
              onChanged: (value) {
                setState(() {
                  _blueValue = value;
                });
              },
              min: 0.0,
              max: 255.0,
              divisions: 255,
              label: 'Blue: ${_blueValue.toInt()}',
            ),
          ],
        ),
      ),
    );
  }
}
