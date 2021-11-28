// @dart=2.9
import 'package:flutter/material.dart';
import 'package:apply_flutter/widgets/navigation_bar/navigation_bar.dart';
import 'package:apply_flutter/widgets/canvas/home_container.dart';
import 'package:apply_flutter/widgets/left_details/left_details.dart';
import 'package:apply_flutter/widgets/right_details/right_details.dart';
import 'package:apply_flutter/widgets/colour/colour.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            NavigationBarSL(),
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
    );
  }
}




