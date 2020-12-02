import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nutrifall/constant.dart';
import 'package:nutrifall/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nutrifall',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Roboto",
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor),
        )
      ),
      home: Menu(),
    );
  }
}