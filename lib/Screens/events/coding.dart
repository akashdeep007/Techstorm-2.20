import 'package:flutter/material.dart';

class Coding extends StatefulWidget {
  @override
  _CodingState createState() => _CodingState();
}

class _CodingState extends State<Coding> {
  @override
  Widget build(BuildContext context) {
    const double padding_count = 5;
    return  Scaffold(
      body: Container(
        height: 400 ,
        child: Column(
              // This next line does the trick.

              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
                  height: 300,
                  width: 400.0,
                  child: Card(
                      color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Robotics',
                              style: TextStyle(
                                  fontSize: 48, fontWeight: FontWeight.bold))
                        ],
                      )),
                ),
                Container(
                   height: 300,
                  margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
                  width: 400.0,
                  child: Card(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Coding',
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
                   height: 300,
                  width: 400.0,
                  child: Card(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Creative',
                              style: TextStyle(
                                  fontSize: 48, fontWeight: FontWeight.bold))
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(padding_count, 0, padding_count, 0),
                   height: 300,
                  width: 400.0,
                  child: Card(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Games',
                              style: TextStyle(
                                  fontSize: 48, fontWeight: FontWeight.bold))
                        ],
                      )),
                ),
              ],
            ),
      ),
    );
  }
}
