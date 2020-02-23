import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

List<Widget> CreativeCards = [
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
              child: Image.asset('assets/images/CREATIVITY/35MM.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            '35MM',
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
                '35MM',
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
              child: Image.asset('assets/images/CREATIVITY/PASSIONWITHREELS.jpg',
                  fit: BoxFit.cover)),
          Center(
              child: Text(
            'PASSION_WITH_REELS',
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
                'PASSION_WITH_REELS',
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

];
