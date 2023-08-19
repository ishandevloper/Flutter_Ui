import 'package:flutter/material.dart';

class ContainerPractice extends StatefulWidget {
  const ContainerPractice({super.key});

  @override
  State<ContainerPractice> createState() => _ContainerPracticeState();
}

class _ContainerPracticeState extends State<ContainerPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container practice"),
      ),

    // => Row & column practice of making containers by using widgets,flex,
    //     MainAxisAlignment and crossAxisAlignment
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
             // width: 50,
              height: 100,
              color: Colors.purple,
            ),
          ),
          Expanded(
            flex: 4,
            child: 
          Container(
           // width: 50,
            height: 100,
            color: Colors.red,
          ),),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.green,
            ),
          ),
          
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
