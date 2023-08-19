import 'dart:math';

import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Containers"),
        ),
        body: Container(
         // height: 300,
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("A",style: TextStyle(fontSize: 25),),
              Text("b", style: TextStyle(fontSize: 25)),
              Text("c", style: TextStyle(fontSize: 25)),
              Text("d", style: TextStyle(fontSize: 25)),
              Text("e", style: TextStyle(fontSize: 25)),
            ],
            
          ),
        ));
  }
}
