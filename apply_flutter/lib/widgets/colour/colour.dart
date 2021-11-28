import 'dart:math';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:apply_flutter/widgets/animations/animations.dart';


class ColourChangingBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
           ColorTween(begin: Color.fromARGB(255, 138, 17, 58), end: Color.fromARGB(255, 1, 87, 155))),
      Track("color2").add(Duration(seconds: 3),
          ColorTween(begin: Color.fromARGB(255, 68, 2, 22), end: Color.fromARGB(255, 30, 136, 229)))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [animation["color1"], animation["color2"]])),
        );
      },
    );
  }
}
