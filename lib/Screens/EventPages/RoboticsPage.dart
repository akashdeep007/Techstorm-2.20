import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Rover/rocarrom.dart';
import 'package:techstorm/Screens/EventPages/Rover/rocombat.dart';
import 'package:techstorm/Screens/EventPages/Rover/ronavigator.dart';
import 'package:techstorm/Screens/EventPages/Rover/ropicker.dart';
import 'package:techstorm/Screens/EventPages/Rover/rosoccer.dart';
import 'package:techstorm/Screens/EventPages/Rover/roterrance.dart';
import 'package:techstorm/Screens/EventPages/Rover/rowings.dart';




class RoboticsPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    List<Widget> RoverCards = [
  //appmani
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/ROVERS/rocom-min.jpg',
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
                'RO_COMBAT',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
               SizedBox(height:20),
              Text(
                  'You don\'t want to stand too close to a robot arm; it can turn you to mush !',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>RO_Combat()));
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
      AssetImage('assets/images/ROVERS/ronav-min.jpg',
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
                'RO_NAVIGATOR',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  'Discipline is the key to stay on track. May your bot be disciplined enough.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>RO_Navigator() ));
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
      AssetImage('assets/images/ROVERS/ropicker-min.jpg',
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
                'Ro - PICKER',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  'At the end of the day, the job is to pick the blocks and move to the finish line as fast as you can !',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>RO_Picker()));
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
      AssetImage('assets/images/ROVERS/rosocc-min.jpg',
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
                'RO SOCCER',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  'As long as no one scored, it\'s always going to be close.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>RO_Soccer()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),
  Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/ROVERS/rot-min.jpg',
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
                'RO_Terrace',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
             SizedBox(height:10),
              Text(
                  'Life will throw many obstacles. But we\'ll throw mountains, desserts, bridges and may be even a river. Just don\'t let your wheels fall apart.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>RO_T()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),
   Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/ROVERS/rowings-min.jpg',
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
                'RO_Wings',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height:20),
              Text(
                  'Please make sure to fasten your seat belts, keep your seats upright and keep your windows open during take-off.',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>RO_Wings()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),


   Container(
    margin: EdgeInsets.only(left:10, right:10),
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      AssetImage('assets/images/ROVERS/rocar-min.jpg',
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
                'RO_Carrom',
                style: TextStyle(
                    fontSize: 28,fontFamily: "TempestApache",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
             SizedBox(height:20),
              Text(
                  'One Objective.\nScore more than the opposition',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black)),
                ],
              ),
RaisedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) =>RO_Carrom()));
                },
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),
];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('ROVERS'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/back.gif'), fit: BoxFit.fill)
        ),
        alignment: Alignment.center,
        child: CarouselSlider.builder(
          enableInfiniteScroll: true,
          height: 220,
   itemCount: RoverCards.length,
   itemBuilder: (BuildContext context, int itemIndex) =>
          RoverCards[itemIndex]
   ),
      ));
  }
}
