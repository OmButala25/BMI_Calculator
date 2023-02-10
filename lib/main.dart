import 'package:flutter/material.dart';
import 'input.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //dark theme with other custom theme
        primaryColor: Color(
            0xff090C22), //always use 0xFF instead of # while using hexcode
        scaffoldBackgroundColor: Color(0xff090C22),
      ),
      home: InputPage(),
    );
  }
}
