import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

List<Widget> RoverCards = [
  //appmani
  Container(
    alignment: Alignment.center,
    color: Colors.white,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Card(
              semanticContainer: true,
              child: Image.asset('assets/images/ROVERS/RO_COMBAT.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'RO_COMBAT',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        ]),
        back: Container(
            margin: EdgeInsets.all(10),
            color: Colors.black26,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Text(
                'APPMANIA',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
              RaisedButton(
                onPressed: () {},
                child: const Text('Divein', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

  //FANTAC
  Container(
    alignment: Alignment.center,
    color: Colors.white,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Card(
              semanticContainer: true,
              child: Image.asset('assets/images/ROVERS/RO_NAVIGATOR.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'RO_NAVIGATOR',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        ]),
        back: Container(
            margin: EdgeInsets.all(10),
            color: Colors.black26,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Text(
                'RO_NAVIGATOR',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
              RaisedButton(
                onPressed: () {},
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

  //OMEGATRIX
  Container(
    alignment: Alignment.center,
    color: Colors.white,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Card(
              semanticContainer: true,
              child: Image.asset('assets/images/ROVERS/Ro_PICKER.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'RO_PICKER',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        ]),
        back: Container(
            margin: EdgeInsets.all(10),
            color: Colors.black26,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Text(
                'Ro_PICKER',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
              RaisedButton(
                onPressed: () {},
                child: const Text('Dive In', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),

  //TECHNOMANIA
  Container(
    alignment: Alignment.center,
    color: Colors.white,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Card(
              semanticContainer: true,
              child: Image.asset('assets/images/ROVERS/RO_SOCCER.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'RO_SOCCER',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        ]),
        back: Container(
            margin: EdgeInsets.all(10),
            color: Colors.black26,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Text(
                'RO_SOCCER',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
              RaisedButton(
                onPressed: () {},
                child: const Text('DiveIn', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  ),
   Container(
    alignment: Alignment.center,
    color: Colors.white,
    child: FlipCard(
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        front: Stack(fit: StackFit.expand, children: <Widget>[
          Card(
              semanticContainer: true,
              child: Image.asset('assets/images/ROVERS/RO_WINGS.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'RO_WINGS',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        ]),
        back: Container(
            margin: EdgeInsets.all(10),
            color: Colors.black26,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Column(children: <Widget>[
              Text(
                'RO_WINGS',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                  'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
              RaisedButton(
                onPressed: () {},
                child: const Text('DiveIn', style: TextStyle(fontSize: 20)),
              ),
            ]))),
  )
];
