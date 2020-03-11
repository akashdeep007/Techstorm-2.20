import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Brain/Appmania.dart';
import 'package:techstorm/Screens/EventPages/Brain/FantaC.dart';
import 'package:techstorm/Screens/EventPages/Brain/omega.dart';
import 'package:techstorm/Screens/EventPages/Brain/technomania.dart';




class BrainPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    List<Widget> brainCards = [
  //appmani
  Container(
    height: 30,
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/BRAIN/am-min.jpg',
                  ), fit: BoxFit.fitWidth)
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
                'APPMANIA',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Center(
                child: Text(
                    'Showcase your inner Zuckerberg by spitting out the next facebook.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black),),
              ),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>AppMania()));
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
      AssetImage('assets/images/BRAIN/fc-min.jpg',
                  ), fit: BoxFit.fitWidth)
    ),
    alignment: Alignment.center,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Column(children: <Widget>[
         
        ]),
        back: Container(
            color: Colors.white,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(20),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'FANTA - C',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                    'while (!(succeed==try()));\n If you get this, then you know what this event is all about.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black),),
              ),
              
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>FantaC()));
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
      AssetImage('assets/images/BRAIN/omega-min.jpg',
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
                'Omegatrix',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
             SizedBox(height: 20,),
              Center(
                child: Text(
                    'Its not about equations or formulas or calculations. Its about understanding.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black),),
              ),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>Omegatrix()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

  //TECHNOMANIA
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/BRAIN/tm-min.jpg',
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
            child: Column( crossAxisAlignment : CrossAxisAlignment.center,mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                                Text(
                'TECHNOMANIA',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
             SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                child: Text(
                    'An idea today can be the technology of tomorrow.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black),),
              ),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>Technomania()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),
];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Brain'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/back.gif'), fit: BoxFit.fill)
        ),
        alignment: Alignment.center,
        child: CarouselSlider.builder(
          enableInfiniteScroll: true,
          height: 220,
   itemCount: brainCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
          brainCards[itemIndex]
   ),
      ));
  }
}
