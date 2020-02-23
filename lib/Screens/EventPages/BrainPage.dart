import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Carousal/BrainCarousal.dart';




class BrainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CarouselSlider.builder(height: 400,
   itemCount: BrainCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
        BrainCards[itemIndex]
   ));
  }
}
