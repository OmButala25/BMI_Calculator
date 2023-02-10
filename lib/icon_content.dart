import 'package:flutter/material.dart';
import 'constants.dart';

class Gender extends StatelessWidget {
  Gender({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          // color: Color(0xFF8D8E98),
          color: Colors.white60,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: textstyle,
        ),
      ],
    );
  }
}
