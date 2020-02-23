import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/CodingPage.dart';
import 'package:techstorm/Screens/EventPages/CreativePage.dart';
import 'package:techstorm/Screens/EventPages/GamesPage.dart';
import 'package:techstorm/Screens/EventPages/RoboticsPage.dart';

class EventScroll extends StatefulWidget {
  @override
  _EventScrollState createState() => _EventScrollState();
}

class _EventScrollState extends State<EventScroll> {

  @override
  Widget build(BuildContext context) {
    const double padding_count = 5;
    return Container ( height: 300.0,child : ListView(
  // This next line does the trick.
  scrollDirection: Axis.horizontal,
  children: <Widget>[
        Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RoboticsPage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/EventTypes/Brain.jpg', fit:BoxFit.cover)),
                Center(child: Text('Brain', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),
        Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RoboticsPage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/EventTypes/CREATIVITY_result.jpg', fit:BoxFit.cover)),
                Center(child: Text('Creativity', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),           Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RoboticsPage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/EventTypes/EXPOSCIENCE_result.jpg', fit:BoxFit.cover)),
                Center(child: Text('Exposcience', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),
        Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RoboticsPage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/EventTypes/ROVERS_result.jpg', fit:BoxFit.cover)),
                Center(child: Text('Rovers', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),
        Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>GamesPage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/EventTypes/GAMES_result.jpg', fit:BoxFit.cover)),
                Center(child: Text('Games', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),
  ],
));

  } 
}