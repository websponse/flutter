// @dart=2.9

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/showup.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class RightDetails extends StatelessWidget {
  const RightDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ShowUp(
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            child: Dice()
            ),
            delay: 11000,
          ),
          ShowUp(
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
            child: Text(
              "ROLL THE DICE",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
              textScaleFactor: 2,
            ),
            ),
            delay: 11000,
          ),
        ],
      ),
    );
  }
}

 
class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}
 
class _DiceState extends State<Dice> {
  int dice_no = 1;
  void update() {
    setState(() {
      dice_no = Random().nextInt(6) + 1;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: FlatButton(
            child: Image.asset('dice$dice_no.png'),
            onPressed: () {
              update();
            },
          ),
        ),
      ),
    );
  }
}