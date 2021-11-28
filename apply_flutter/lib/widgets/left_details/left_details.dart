// @dart=2.9
import 'package:flutter/material.dart';
import 'package:apply_flutter/widgets/navigation_bar/navigation_bar.dart';
import 'package:apply_flutter/widgets/canvas/home_container.dart';
class LeftDetails extends StatelessWidget {
  const LeftDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'APPLYING FLUTTER',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
          ),
          Text(
            'An Emerging Web Technology',
            style: TextStyle(fontSize: 21, height: 1.7),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Author: Silvena Lam.',
            style: TextStyle(fontSize: 21, height: 1.7),
            textAlign: TextAlign.center,
          ),
          Text(
            'Student ID: 20070610',
            style: TextStyle(fontSize: 21, height: 1.7),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}