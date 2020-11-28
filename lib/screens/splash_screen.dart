import 'package:dec_fluttercreate/constants/assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.appLogo),
              Text(
                  "KINGSHOME",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
