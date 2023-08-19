import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images Around TextView',
      home: ImagesAroundTextScreen(),
    );
  }
}

class ImagesAroundTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Around TextView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/001.jpg'),
            Image.asset('lib/images/002.jpg'),
            Image.asset('lib/images/003.jpg'),
            Image.asset('lib/images/004.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
