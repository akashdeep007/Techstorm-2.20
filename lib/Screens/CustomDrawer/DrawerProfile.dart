import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0),),
          FaIcon(FontAwesomeIcons.userCircle, size: 128,),
          Text("MyProfile"),
        ],
      ),
    );
  }
}