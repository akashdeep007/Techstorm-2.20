import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:flutter/services.dart';

import 'dart:async';

import 'dart:typed_data';

import 'dart:ui';

import 'dart:io';

import 'package:flutter/rendering.dart';

import 'package:path_provider/path_provider.dart';

class QrGen extends StatelessWidget {
  String name = '';
  String department = '';
  String year = '';
  String college = '';
  String contact = '';
  String event = '';

  QrGen(
      {this.name,
      this.department,
      this.year,
      this.college,
      this.contact,
      this.event});
  Widget build(BuildContext context) {
    GlobalKey globalKey = new GlobalKey();
    String data =
        "Name:$name \nEvent:$event\nCollege:$college\nDepartment: $department\nYear:$year\nContact:$contact,";

    return Scaffold(
      appBar: AppBar(
        title: Text('SCAN IT'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "${event}",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.deepOrange,
              ),
            ),
            RepaintBoundary(
                key: globalKey,
                child: QrImage(
                  data: data,
                ))
          ],
        ),
      ),
    );
  }
}
