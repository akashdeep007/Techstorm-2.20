import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
_launchURL() async {
  const url = 'https://www.youtube.com/watch?v=NcDxGhwuphI';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();
    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
          heroTag: "train",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon(Icons.video_call),
          onPressed: _launchURL,
        )));
        childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Choo choo",
        currentButton: FloatingActionButton(
          heroTag: "train",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon(Icons.report),
          onPressed: () {},
        )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
      heroTag: "airplane",
      backgroundColor: Colors.greenAccent,
      mini: true,
      child: Icon(Icons.schedule),
      onPressed: () {},
    )));

    childButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
      heroTag: "directions",
      backgroundColor: Colors.blueAccent,
      mini: true,
      child: Icon(Icons.people),
      onPressed: () {},
    )));
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: UnicornDialer(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
          parentButtonBackground: Colors.redAccent,
          orientation: UnicornOrientation.VERTICAL,
          parentButton: Icon(Icons.menu),
          childButtons: childButtons),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Techstorm 2.20",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Text("events"),
              Text("trailer link"),
              Text("sponsers"),
            ],
          ),
        ),
      ),
    );
  }
}
