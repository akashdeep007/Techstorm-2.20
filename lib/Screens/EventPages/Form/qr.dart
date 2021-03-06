import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/rendering.dart';

import '../../home.dart';


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

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(onPressed: () =>Navigator.push(context,new MaterialPageRoute(builder: (context) =>Home())), label: Text('Return')),
        body: RepaintBoundary(
          key:screen ,
          child:
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40),
                  
                  Text(
                    "${widget.eventName}",
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  RepaintBoundary(
                      child: QrImage(
                        data: widget.data,
                      )),
                      SizedBox(height: 40,),
                      Text('Please Take ScreenShot', style: TextStyle(fontSize : 28, color:Colors.red, fontWeight:FontWeight.bold),),
                      
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Please take a screenshot of the QR code. You have to submit the registration fees at Alumni Room, BPPIMT on any working day (for BPPIMT students) or on the day of the event (for students from other colleges). Your payment will be recieved only if you have the QR code. The QR code will be verified during payment and before the start of your event.'),
                      ),
                ],
              ),
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
