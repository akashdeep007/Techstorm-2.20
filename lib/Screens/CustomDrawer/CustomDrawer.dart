import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomDrawer extends StatelessWidget {
  _launchFacebook() async {
  const url = 'https://www.facebook.com/AmorTentia2020/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  _launchInstagram() async {
  const url = 'https://www.facebook.com/AmorTentia2020/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  _launchWebsite() async {
  const url = 'https://www.facebook.com/AmorTentia2020/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children : <Widget> [
          
          Container(
            padding: EdgeInsets.only(top : 200),
            child: Column(
              children : <Widget>[
                // FlatButton(
                //   child: Text('Profile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                //   onPressed: () {},
                // ),
                FlatButton(
                  padding: EdgeInsets.only(top : 20, bottom :20),
                  child: Text('Team', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: EdgeInsets.only(top : 20, bottom :20),
                  child: Text('Developers', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: EdgeInsets.only(top : 20, bottom :20),
                  child: Text('Website', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  onPressed: () {},
                ),

              ]
            ),
          ),
          Column(
            children : <Widget>[
              Text('Social Media', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon : FaIcon(FontAwesomeIcons.facebook), onPressed: _launchFacebook,),
                  IconButton(icon : FaIcon(FontAwesomeIcons.instagram), onPressed: _launchInstagram,),
                  IconButton(icon : FaIcon(FontAwesomeIcons.youtube), onPressed: _launchInstagram,),
                ],
              ),
              SizedBox(height: 20,),
            ]
          ),

        ]
      ),
    );
  }
}