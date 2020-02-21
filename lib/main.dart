import 'package:flutter/material.dart';
import 'package:techstorm/Screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TechStorm 2.20',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Home(),
      );
  }
}