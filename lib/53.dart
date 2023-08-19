import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Changer',
      home: BackgroundChangerScreen(),
    );
  }
}

class BackgroundChangerScreen extends StatefulWidget {
  @override
  _BackgroundChangerScreenState createState() => _BackgroundChangerScreenState();
}

class _BackgroundChangerScreenState extends State<BackgroundChangerScreen> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    // Generate a random color
    Color newColor = Color(Random().nextInt(0xFFFFFFFF)).withAlpha(0xFF);

    setState(() {
      _backgroundColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Changer'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              _changeBackgroundColor();
            },
            child: Text('Change Background'),
          ),
        ),
      ),
    );
  }
}
