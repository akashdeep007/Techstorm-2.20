import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 9);

    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/back.gif"),
                    fit: BoxFit.cover,
                  ),)),
        Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RotateAnimatedTextKit(
              isRepeatingAnimation: false,
              duration: Duration(seconds: 1),
                text: [
                  "BRAIN TEASERS",
                  "CREATIVITY",
                  "ROVERS",
                  "GAMES",
                  "EXPOSCIENCE",
                  "TECHSTORM 2.20"
                ],
                textStyle: TextStyle(
                  color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontFamily: "TempestApache"),

                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ],
        )),
      ],
    ));
  }
}
