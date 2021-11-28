// @dart=2.9
import 'package:flutter/material.dart';

class NavigationBarSL extends StatelessWidget {
  const NavigationBarSL({Key key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 67,
              width: 270,
              child: Image.asset('logo.png'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _NavBarItem('Diploma in Website Development'),
                SizedBox(
                  width: 60,
                )
              ],
            )
          ],
        ),
      );
    }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}