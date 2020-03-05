import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Creative/35mm.dart';
import 'package:techstorm/Screens/EventPages/Creative/expo.dart';
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
      AssetImage('assets/images/CREATIVITY/pwr-min.jpg',
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
            padding: EdgeInsets.all(10),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'Passion with Reels',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 20,),
              Text(
                  'Keep it simple',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
              
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

  //FANTAC
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/expo/expo-min.jpg',
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
            padding: EdgeInsets.all(10),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                'Exposcience',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 20,),
              
              
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>Expo()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),
   Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/CREATIVITY/35mm-min.jpg',
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
            padding: EdgeInsets.all(10),
            child: Column( mainAxisAlignment : MainAxisAlignment.spaceEvenly,children: <Widget>[
              Column(
                children: <Widget>[
                                Text(
                '35MM LIVE',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 20,),
              Text(
                  'Keep it simple',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
              
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
          height: 220,
   itemCount: CreativeCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
          CreativeCards[itemIndex]
   ),
      ));
  }
}