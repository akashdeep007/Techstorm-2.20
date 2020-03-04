import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
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
      AssetImage('assets/images/GAMES/nfs-min.jpg',
                  ), fit: BoxFit.scaleDown)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
         
        ]),
        back: Container(
            color: Colors.white,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'NEED FOR SPEED',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  'Level Up!',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
              
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
      AssetImage('assets/images/GAMES/khet-min.jpg',
                  ), fit: BoxFit.scaleDown)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
         
        ]),
        back: Container(
            color: Colors.white,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'KHET',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  'The blunders are all there on the board, waiting to be made. When you see a good move, look for a better one.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
              
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
      AssetImage('assets/images/GAMES/coc-min.jpg',
                  ), fit: BoxFit.scaleDown)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
         
        ]),
        back: Container(
            color: Colors.white,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'CLASH OF CLANS',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  'There is no good or bad in this world,\nthere are just people whose intentions and clans clash',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
              
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
      AssetImage('assets/images/GAMES/fifa-min.jpg',
                  ), fit: BoxFit.scaleDown)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          
        ]),
        back: Container(
            color: Colors.white,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'FIFA',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  '90 Minutes. One Objective.\nScore more than the opposition',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
              
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
          image: DecorationImage(image: AssetImage('assets/images/back.gif'), fit: BoxFit.fill)
        ),
        alignment: Alignment.center,
        child: CarouselSlider.builder(
          enableInfiniteScroll: true,
          height: 220,
   itemCount: GamesCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
          GamesCards[itemIndex]
   ),
      ));
  }
}
