import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';

class Result extends StatelessWidget {
  Result(
      {required this.bmiresult,
      required this.textresult,
      required this.interpretation});

  final String bmiresult;
  final String textresult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff090C22),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  'Your Result',
                  style: tt,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reuseable(
              colour: activecolor,
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textresult.toUpperCase(),
                    style: resulttext,
                  ),
                  Text(
                    bmiresult,
                    style: bmistyle,
                  ),
                  Text(
                    interpretation,
                    style: resulttextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: largebutton,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 65.0,
            ),
          ),
        ],
      ),
    );
  }
}
