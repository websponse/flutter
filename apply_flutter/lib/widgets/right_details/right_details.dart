// @dart=2.9
import 'dart:math';
import 'package:flutter/material.dart';

class RightDetails extends StatelessWidget {
  const RightDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            child: Dice()
          ), 
          Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
                child: Text(
                          'Click on the dice to play',
                          style: TextStyle(fontSize: 21, height: 1.7),
                        ),
              ),
          ),
          Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
                child: Text(
                          'Get six for a surprise',
                          style: TextStyle(fontSize: 21, height: 1.7),
                        ),
              ),
          ),
        ],
      ),
    );
  }
}

/*
class RightDetails extends StatelessWidget {
  final String title;
  const RightDetails(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Dice()
    );
  }
}
*/
/*
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  child: Dice()
                ),
                Expanded(
                  child: Container(
                    SizedBox(
                    height: 30,
                    ),
                    Text(
                      'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                      style: TextStyle(fontSize: 21, height: 1.7),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
  }
}
*/
class Dice extends StatefulWidget {
  @override
  DiceState createState() => DiceState();
}
 
class DiceState extends State<Dice> {
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
            child: Image.asset(
                  'dice$dice_no.png',            	
                  height: 200,
                  width: 200,
                  ),
            onPressed: () {
              update();
            },
          ),
        ),
      ),
    );
  }
}
