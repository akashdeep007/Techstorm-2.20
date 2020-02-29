import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:techstorm/Screens/Home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(milliseconds: 4500);

    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    //Navigator.push(context,new MaterialPageRoute(builder: (context) =>Home()));
    Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(milliseconds: 1500), child: Home()));
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
                    image: AssetImage("assets/images/back2.gif"),
                    fit: BoxFit.cover,
                  ),)),
        Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RotateAnimatedTextKit(
              onFinished: navigationPage,
              isRepeatingAnimation: false,
              duration: Duration(seconds: 1),
                text: [
                  "",
                  "UNLEASH\nYOUr\nTHOUHGTS",
                  "TECHSTOrM\n2.20"
                ],
                textStyle: TextStyle(
                  color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.normal,
                    fontFamily: "BladeRunner"),

                textAlign: TextAlign.center,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ],
        )),
      ],
    ));
  }
}
