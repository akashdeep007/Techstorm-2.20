import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Carousal extends StatefulWidget {
  @override
  _CarousalState createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back.gif"),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        children: <Widget>[
          Center(
              child: Text(
            "Sponsers",
            style: TextStyle(
                fontSize: 48,
                fontFamily: 'BladeRunner',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )),
          SizedBox(height: 50),
          Container(
            height: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: <Widget>[
                  Carousel(
                    dotIncreaseSize: 1.5,
                    boxFit: BoxFit.contain,
                    images: [
                      AssetImage("assets/images/Sponsors/ardent.jpeg"),
                      AssetImage("assets/images/Sponsors/jindal.jpeg"),
                      AssetImage("assets/images/Sponsors/made.jpeg"),
                      AssetImage("assets/images/Sponsors/webel.jpeg"),
                    ],
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: Duration(milliseconds: 200),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
