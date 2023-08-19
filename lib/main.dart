import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ui_design_devlopment/50.dart';
import 'package:ui_design_devlopment/regestration_form.dart';
import 'package:ui_design_devlopment/row_column_widget.dart';
import 'package:ui_design_devlopment/screen1.dart';
import 'package:ui_design_devlopment/task3.dart';
import 'package:ui_design_devlopment/travel.dart';
import 'package:ui_design_devlopment/travel_page.dart';
import 'package:ui_design_devlopment/widget_container.dart';

import '51.dart';
import '52.dart';
import '53.dart';
import '54.dart';
import '55.dart';
import '56.dart';
import '57.dart';
import '58.dart';
import '59.dart';
import 'Page1.dart';
import 'Row_Column.dart';
import 'Task2.dart';
import 'container_row_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Regestration(),
    );    
  }
}

