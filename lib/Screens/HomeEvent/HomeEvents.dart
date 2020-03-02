import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/BrainPage.dart';
import 'package:techstorm/Screens/EventPages/CreativePage.dart';
import 'package:techstorm/Screens/EventPages/GamesPage.dart';
import 'package:techstorm/Screens/EventPages/RoboticsPage.dart';

class EventScroll extends StatefulWidget {
  final BuildContext context;
  EventScroll({this.context});
  @override
  _EventScrollState createState() => _EventScrollState();
}

class _EventScrollState extends State<EventScroll> {

  Image exposcience, brain, creativity, rover, game;


  @override
  void initState() {
    exposcience = Image.asset('assets/images/EventTypes/EXPOSCIENCE_result.jpg', fit:BoxFit.cover);
    brain = Image.asset('assets/images/EventTypes/brain_teasers.jpg', fit:BoxFit.cover);
    creativity = Image.asset('assets/images/EventTypes/creative.jpg', fit:BoxFit.cover);
    rover = Image.asset('assets/images/EventTypes/rovers.jpg', fit:BoxFit.cover);
    game = Image.asset('assets/images/EventTypes/games.jpg', fit:BoxFit.cover);
    super.initState();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(exposcience.image, widget.context);
    precacheImage(brain.image, widget.context);
    precacheImage(creativity.image, widget.context);
    precacheImage(game.image, widget.context);
    precacheImage(rover.image, widget.context);
  }

  @override
  Widget build(BuildContext context) {
     MediaQueryData queryData;
queryData = MediaQuery.of(context);
var sw=queryData.size.width;
  Color borderColorLight = Color.fromARGB(255, 0,185,241);
  // Color borderColorLight = Color.fromARGB(255, 0,54,112);
  double subHeadingSize = 28;
    const double padding_count = 8;
    return Container ( height: 300.0,child : ListView(
  // This next line does the trick.
  scrollDirection: Axis.horizontal,
  children: <Widget>[
        Container(
          color: borderColorLight,
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: sw*.9,
      child: InkWell(
        onTap: (){print('Brain Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>BrainPage()));},
          child: Container(
            // margin: EdgeInsets.all(1),
            child: Stack(
              fit: StackFit.expand,
              children : <Widget> [
                Card(
                  elevation: 0,
                  semanticContainer: true,
                  child: brain),
                  Container(padding : EdgeInsets.only(bottom: 10),alignment: Alignment.bottomCenter,child: Text('Brain teasers', style: TextStyle(fontSize: subHeadingSize, fontFamily: "TempestApache",fontWeight: FontWeight.bold, color: Colors.white),)),
              ]
            ),
          )

      ),
    ),
        Container(
          color: borderColorLight,
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: sw*.9,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>CreativePage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: creativity),
                Container(padding : EdgeInsets.only(bottom: 10),alignment: Alignment.bottomCenter,child: Text('Creativity', style: TextStyle(fontSize: subHeadingSize, fontFamily: "TempestApache",fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),        
    //    Container(
    //   margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
    //   width: 400.0,
    //   child: InkWell(
    //     onTap: (){print('Robotics Tapped');
    //     Navigator.push(context,new MaterialPageRoute(builder: (context) =>RoboticsPage()));},
    //       child: Stack(
    //         fit: StackFit.expand,
    //         children : <Widget> [
    //           Card(
    //             semanticContainer: true,
    //             child:exposcience),
    //             Center(child: Text('Exposcience', style: TextStyle(fontSize: subHeadingSize, fontFamily: "TempestApache",fontWeight: FontWeight.bold, color: Colors.white),)),
    //         ]
    //       )

    //   ),
    // ),
         Container(
           color: borderColorLight,
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: sw*.9,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RoboticsPage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: rover),
                Container(padding : EdgeInsets.only(bottom: 10),alignment: Alignment.bottomCenter,child: Text('Rover', style: TextStyle(fontSize: subHeadingSize, fontFamily: "TempestApache",fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),
        Container(
          color: borderColorLight,
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: sw*.9,
      child: InkWell(
        onTap: (){print('Robotics Tapped');
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>GamesPage()));},
          child: Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: game),
                Container(padding : EdgeInsets.only(bottom: 10),alignment: Alignment.bottomCenter,child: Text('Games', style: TextStyle(fontSize: subHeadingSize, fontFamily: "TempestApache",fontWeight: FontWeight.bold, color: Colors.white),)),
            ]
          )

      ),
    ),
  ],
));

  } 
}