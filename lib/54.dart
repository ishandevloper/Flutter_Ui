import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Size Changer',
      home: FontSizeChangerScreen(),
    );
  }
}

class FontSizeChangerScreen extends StatefulWidget {
  @override
  _FontSizeChangerScreenState createState() => _FontSizeChangerScreenState();
}

class _FontSizeChangerScreenState extends State<FontSizeChangerScreen> {
  double _fontSize = 20.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      _fontSize -= 2.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample Text',
              style: TextStyle(fontSize: _fontSize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _increaseFontSize();
                  },
                  child: Text('Increase'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _decreaseFontSize();
                  },
                  child: Text('Decrease'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
