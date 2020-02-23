import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

  List<Widget> GameCards =  [
    //NEED FOR SPEED
    Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: FlipCard(flipOnTouch: true,direction: FlipDirection.HORIZONTAL, 
            front: 
            Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/GAMES/NFS.jpg', fit:BoxFit.cover)),
                Center(child: Text('Need for Speed', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),)),
            ]
          ),
            back: Container(
              margin: EdgeInsets.all(10),
              color: Colors.black26,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child : Column ( children : <Widget> [Text('Need for Speed', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),) ,Text('Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum')])
            )
            ),
          ),     
          //KHET
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: FlipCard(flipOnTouch: true,direction: FlipDirection.HORIZONTAL, 
            front: 
            Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/GAMES/KHET.jpg', fit:BoxFit.cover)),
                Center(child: Text('KHET', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),)),
            ]
          ),
            back: Container(
              margin: EdgeInsets.all(10),
              color: Colors.black26,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child : Column ( children : <Widget> [Text('Need for Speed', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),) ,Text('Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum')])
            )
            ),
          ),     
          
          //COC
                    Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: FlipCard(flipOnTouch: true,direction: FlipDirection.HORIZONTAL, 
            front: 
            Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/GAMES/CLASH_OF_CLANS.jpg', fit:BoxFit.cover)),
                Center(child: Text('Clash of Clans', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),)),
            ]
          ),
            back: Container(
              margin: EdgeInsets.all(10),
              color: Colors.black26,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child : Column ( children : <Widget> [Text('Clash of Clans', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),) ,Text('Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum')])
            )
            ),
          ),   

          //FIFA
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: FlipCard(flipOnTouch: true,direction: FlipDirection.HORIZONTAL, 
            front: 
            Stack(
            fit: StackFit.expand,
            children : <Widget> [
              Card(
                semanticContainer: true,
                child: Image.asset('assets/images/GAMES/FIFA.jpg', fit:BoxFit.cover)),
                Center(child: Text('FIFA', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),)),
            ]
          ),
            back: Container(
              margin: EdgeInsets.all(10),
              color: Colors.black26,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child : Column ( children : <Widget> [Text('Need for Speed', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),) ,Text('Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum')])
            )
            ),
          )];
