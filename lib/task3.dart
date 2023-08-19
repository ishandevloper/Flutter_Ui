import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("container widget")),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.red,
              alignment: Alignment.center,
            ),
          ),

          // row 2 splits 4 container equally

          Expanded(
              flex: 4,
              child: Row(
                children: [
                  // middle row 1st 50% of screen
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.lightBlue,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.blue,
                              alignment: Alignment.center,
                            ),
                          )
                        ],
                      )),

                  // middle row 2nd 50% of screen
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.blueAccent,
                              alignment: Alignment.center,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.lightBlue,
                              alignment: Alignment.center,
                            ),
                          )
                        ],
                      ))
                ],
              )),

          //row 3 yellow split 3 containers

          Expanded(
              flex: 2,
              child: Row(
                children: [
                  //colum 1 form row 3
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      alignment: Alignment.center,
                    ),
                  ),
                  //colum 2 form row 3
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color.fromARGB(255, 199, 199, 67),
                      alignment: Alignment.center,
                    ),
                  ),
                  //colum 3 form row 3
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.yellow,
                      alignment: Alignment.center,
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
