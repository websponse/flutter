// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_assignment/snows.dart';
import 'package:flutter_assignment/showup.dart';
import 'package:flutter_assignment/left_details.dart';
import 'package:flutter_assignment/right_details.dart';
import 'package:flutter_assignment/background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: ColourChangingBackground()),
        Positioned.fill(child: ShowUp(
            child: Snows(150),
            delay: 16000,
          )
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(children: [
                      LeftDetails(),
                      Expanded(
                        child: Center(
                          child: RightDetails(),
                        ),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
