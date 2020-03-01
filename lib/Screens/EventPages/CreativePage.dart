import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Creative/35mm.dart';
import 'package:techstorm/Screens/EventPages/Creative/reel.dart';




class CreativePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> CreativeCards = [
  //35mm
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/CREATIVITY/35MM.jpg',
                  ), fit: BoxFit.cover)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Center(
              child: Text(
            '35MM',
            style: TextStyle(
                fontSize: 36,fontFamily: "TempestApache", fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ]),
        back: Container(
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                '35MM',
                style: TextStyle(
                    fontSize: 36,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
              
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>MMLIVE()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

  //FANTAC
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/CREATIVITY/PASSIONWITHREELS.jpg',
                  ), fit: BoxFit.cover)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Center(
              child: Text(
            'PASSION WITH REELS',
            style: TextStyle(
                fontSize: 28,fontFamily: "TempestApache", fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ]),
        back: Container(
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'PASSIONWITHREELS',
                style: TextStyle(
                    fontSize: 36,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
              
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>PASSIONWITHREELS()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Creativity'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/back.gif'), fit: BoxFit.cover)
        ),
        alignment: Alignment.center,
        child: CarouselSlider.builder(
          enableInfiniteScroll: true,
          height: 500,
   itemCount: CreativeCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
          CreativeCards[itemIndex]
   ),
      ));
  }
}