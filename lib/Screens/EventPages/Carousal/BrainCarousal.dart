import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

List<Widget> BrainCards = [
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
              child: Image.asset('assets/images/BRAIN/APPMANIA.png',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'APPMANIA',
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
              child: Image.asset('assets/images/BRAIN/FANTA-C.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'FANTA-C',
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
                'Need for Speed',
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
              child: Image.asset('assets/images/BRAIN/OMEGATRIX.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'OMEGATRIX',
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
                'Clash of Clans',
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
              child: Image.asset('assets/images/BRAIN/TECHNOMANIA.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'TECHNOMANIA',
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
                'Need for Speed',
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
