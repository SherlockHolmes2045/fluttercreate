import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:dec_fluttercreate/screens/dashboard.dart';
import 'package:dec_fluttercreate/screens/login.dart';
import 'package:dec_fluttercreate/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: Assets.font
      ),
      home: Dashboard(),
    );
  }
}
