import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:screenshots/screenshots.dart';


class QrGen extends StatefulWidget {
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

  @override
  _QrGenState createState() => _QrGenState();
}

class _QrGenState extends State<QrGen> {
  Widget build(BuildContext context) {
     GlobalKey screen = new GlobalKey();
final config = Config();



     
  

   
    ScreenShot() async {
      RenderRepaintBoundary boundary = screen.currentContext.findRenderObject();

      ui.Image image = await boundary.toImage();

      ByteData byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
    
      var filePath = await ImagePickerSaver.saveFile(
          fileData: byteData.buffer.asUint8List());

      print(filePath);
    }

    String data =
        "Name:${widget.name} \nEvent:${widget.event}\nCollege:${widget.college}\nDepartment: ${widget.department}\nYear:${widget.year}\nContact:${widget.contact},";

    return Scaffold(
      appBar: AppBar(
        title: Text('SCAN IT'),
        
        
      ),
       
      body: 
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  "${widget.event}",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.deepOrange,
                  ),
                ),
                RepaintBoundary(
                    
                    child: QrImage(
                      data: data,
                    )),
                RaisedButton(
                  onPressed: ScreenShot,
                  child: Text("Save Image"),
                )
              ],
            ),
            
          ),
      );
  
  }
}
