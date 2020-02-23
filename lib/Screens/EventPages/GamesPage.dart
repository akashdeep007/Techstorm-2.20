import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import './GamesCarousal.dart';

class GamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CarouselSlider.builder(height: 400,
   itemCount: GameCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
        GameCards[itemIndex]
   ));
  }
}