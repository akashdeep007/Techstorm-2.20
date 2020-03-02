import 'dart:math';

import 'package:flutter/material.dart';


class _DevPageState extends State<DevPage> {
  final _pageController = PageController(
    viewportFraction: 0.3,
  );

  List<CreditCard> _creditCards = [];

  @override
  void initState() {
    super.initState();

    _creditCards = [
      CreditCard(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        image: 'images/visa.png',
        name: 'ANDREW MITCHELL',
        desg: '1234',
        
      ),
      CreditCard(
        decoration: BoxDecoration(
          color: kRed.withOpacity(0.4),
        ),
        image: 'images/visa.png',
        name: 'ANDREW MITCHELL',
        desg: '2434',
        
      ),
      CreditCard(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [kBlue, kPurple],
            stops: [0.3, 0.95],
          ),
        ),
        image: 'assets/images/BRAIN/OMEGATRIX.jpg',
        name: 'ANDREW MITCHELL',
        desg: '4567',
        
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Developer'),
          backgroundColor: Colors.black87,
        ),
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back2.gif"),
                fit: BoxFit.cover)),
        child:  Center(
        child: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          itemCount: _creditCards.length,
          itemBuilder: (context, index) => _builder(index),
        ),
      ),
    ));
  }

  _builder(int index) {
    CreditCard _card = _creditCards[index];
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;

        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;

          if (value >= 0) {
            double _lowerLimit = 0;
            double _upperLimit = pi / 2;

            value = (_upperLimit - (value.abs() * (_upperLimit - _lowerLimit)))
                .clamp(_lowerLimit, _upperLimit);
            value = _upperLimit - value;
            value *= -1;
          }
        } else {
          if (index == 0) {
            value = 0;
          } else if (index == 1) {
            value = -1;
          }
        }

        return Center(
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(value),
            alignment: Alignment.center,
            child: child,
          ),
        );
      },
      child: _card,
    );
  }
}

class DevPage extends StatefulWidget {
  @override
  _DevPageState createState() => _DevPageState();
}

class CreditCard extends StatelessWidget {
  final BoxDecoration decoration;
  final String image;
  final String name;
  final String desg;

  const CreditCard({
    this.decoration,
    this.image,
    this.name,
    this.desg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 300,
      height: 300,
      decoration: decoration,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child:ClipOval(
               
                child: Image.asset(
                image,
                height: 100,
              
              ),
          ),),
          Align(alignment: Alignment.bottomCenter,child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    desg,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  
                  
                ],
              ),
              
            ],
          ))
        ],
      ),
    );
  }
}

Color kPink = Color(0xFFEE4CBF);
Color kRed = Color(0xFFFA3754);
Color kBlue = Color(0xFF4AA3F2);
Color kPurple = Color(0xFFAF92FB);


