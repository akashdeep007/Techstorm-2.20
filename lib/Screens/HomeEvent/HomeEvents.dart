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
              child: Card(
                color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Robotics', style : TextStyle(fontSize : 48, fontWeight : FontWeight.bold))
            ],
          )
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Coding Tapped');
         Navigator.push(context,new MaterialPageRoute(builder: (context) =>CodingPage()));
        },
              child: Card(
                color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Coding', style : TextStyle(fontSize : 48, fontWeight : FontWeight.bold))
            ],
          )
        ),
      ),
    ),    Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Creative Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>CreativePage()));},
              child: Card(
                color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Creative', style : TextStyle(fontSize : 48, fontWeight : FontWeight.bold))
            ],
          )
        ),
      ),
    ),
        Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 400.0,
      child: InkWell(
        onTap: (){print('Games Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>GamesPage()));},
              child: Card(
                color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Games', style : TextStyle(fontSize : 48, fontWeight : FontWeight.bold))
            ],
          )
        ),
      ),
    ),
  ],
));

  }
}