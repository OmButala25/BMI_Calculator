import 'package:flutter/material.dart';

class Reuseable extends StatelessWidget {
  Reuseable({required this.childcard, required this.colour});

  final Color colour;
  final Widget childcard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childcard,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
