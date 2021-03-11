import 'package:flutter/material.dart';
import 'package:bmi_app/screens/home_page.dart';

void main() =>  runApp(Calculator());

class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF64DD17),
        scaffoldBackgroundColor: Color(0xFF64DD17),
      ),
      home: Homepage(),
    );
  }
}

