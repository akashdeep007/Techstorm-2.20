import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/BRAIN/FantaC.dart';
import 'package:techstorm/Screens/EventPages/Games/coc.dart';
import 'package:techstorm/Screens/EventPages/Games/fifa.dart';
import 'package:techstorm/Screens/EventPages/Games/khet.dart';
import 'package:techstorm/Screens/EventPages/Games/nfs.dart';




class GamesPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    List<Widget> GamesCards = [
  //appmani
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/GAMES/NFS.jpg',
                  ), fit: BoxFit.cover)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Center(
              child: Text(
            'NEED FOR SPEED',
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
                'NEED FOR SPEED',
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
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>NFS()));
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
      AssetImage('assets/images/GAMES/KHET.jpg',
                  ), fit: BoxFit.cover)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Center(
              child: Text(
            'KHET',
            style: TextStyle(
                fontSize: 36, fontFamily: "TempestApache",fontWeight: FontWeight.bold, color: Colors.white),
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
                'KHET',
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
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>KHET()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

  //OMEGATRIX
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/GAMES/CLASH_OF_CLANS.jpg',
                  ), fit: BoxFit.cover)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Center(
              child: Text(
            'CLASH OF CLANS',
            style: TextStyle(
                fontSize: 36,fontFamily: "TempestApache", fontWeight: FontWeight.bold, color: Colors.black),
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
                'CLASH OF CLANS',
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
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>COC()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

  //FIFA
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/GAMES/FIFA.jpg',
                  ), fit: BoxFit.cover)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Center(
              child: Text(
            'FIFA',
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
                'FIFA',
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
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>FIFA()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),
];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Games'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/back.gif'), fit: BoxFit.cover)
        ),
        alignment: Alignment.center,
        child: CarouselSlider.builder(
          enableInfiniteScroll: true,
          height: 500,
   itemCount: GamesCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
          GamesCards[itemIndex]
   ),
      ));
  }
}
