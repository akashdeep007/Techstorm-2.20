import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class QrGen extends StatefulWidget {
  String eventName;
  String data;
  QrGen(this.eventName, this.data);

  @override
  _QrGenState createState() => _QrGenState();
}

class _QrGenState extends State<QrGen> {
  Widget build(BuildContext context) {
    GlobalKey screen = new GlobalKey();


    void _screenshot() async {
      RenderRepaintBoundary boundary = screen.currentContext.findRenderObject();

      ui.Image image = await boundary.toImage();

      ByteData byteData =
          await image.toByteData(format: ui.ImageByteFormat.rawRgba);
      var filePath = await ImagePickerSaver.saveFile(
          fileData: byteData.buffer.asUint8List());

      print(filePath);
    }

    // String data =
    //     "Name:${widget.name} \nEvent:${widget.event}\nCollege:${widget.college}\nDepartment: ${widget.department}\nYear:${widget.year}\nContact:${widget.contact},";

    return Scaffold(
      appBar: AppBar(
        title: Text('SCAN IT'),
      ),
      body: RepaintBoundary(
        key:screen ,
        child:
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  "${widget.eventName}",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.deepOrange,
                  ),
                ),
                RepaintBoundary(
                    
                    child: QrImage(
                      data: widget.data,
                    )),
                RaisedButton(
                  onPressed: _screenshot,
                  child: Text("Save Image"),
                )
              ],
            ),
          ),
      ),
    );
  }
}



  // Future<Uint8List> _capturePng() async {
  //   try {
  //     print('inside');
  //     RenderRepaintBoundary boundary =
  //         _globalKey.currentContext.findRenderObject();
  //     ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  //     ByteData byteData =
  //         await image.toByteData(format: ui.ImageByteFormat.png);
  //     var pngBytes = byteData.buffer.asUint8List();
  //     var bs64 = base64Encode(pngBytes);
  //     print(pngBytes);
  //     print(bs64);
  //     final result = await ImageGallerySaver.saveImage(pngBytes);
  //     print(result);
  //     return pngBytes;
  //   } catch (e) {
  //     print(e);
  //     return null;
  //   }
  // }
