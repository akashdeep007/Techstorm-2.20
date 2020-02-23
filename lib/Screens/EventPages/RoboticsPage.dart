import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Carousal/RoverCarousal.dart';



class RoboticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CarouselSlider.builder(height: 400,
   itemCount: RoverCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
        RoverCards[itemIndex]
   ));
  }
}