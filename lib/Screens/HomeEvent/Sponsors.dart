import 'package:flutter/material.dart';

class SponsorScroll extends StatefulWidget {
  @override
  _SponsorScrollState createState() => _SponsorScrollState();
}

class _SponsorScrollState extends State<SponsorScroll> {

  @override
  Widget build(BuildContext context) {
    const double padding_count = 5;
    return Container ( height: 100.0,child : ListView(
  // This next line does the trick.
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 200.0,
      child: InkWell(
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
      width: 200.0,
      child: InkWell(
              child: Card(
                color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Ardent', style : TextStyle(fontSize : 48, fontWeight : FontWeight.bold))
            ],
          )
        ),
      ),
    ),
        Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 200.0,
      child: InkWell(
              child: Card(
                color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('T2', style : TextStyle(fontSize : 48, fontWeight : FontWeight.bold))
            ],
          )
        ),
      ),
    ),
        Container(
      margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
      width: 200.0,
      child: InkWell(
              child: Card(
                color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('mywbut', style : TextStyle(fontSize : 48, fontWeight : FontWeight.bold))
            ],
          )
        ),
      ),
    ),])
    );
  }
}