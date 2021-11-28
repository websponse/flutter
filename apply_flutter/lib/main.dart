// @dart=2.9
import 'package:flutter/material.dart';
import 'package:apply_flutter/views/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Applying an Emerging Web Technology - Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'SangBleu Sunrise'
              )),    
      home: HomeView()
    );
  }
}

