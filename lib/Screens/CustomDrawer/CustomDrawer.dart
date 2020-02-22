import 'package:flutter/material.dart';
import 'package:techstorm/Screens/CustomDrawer/DrawerProfile.dart';
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
          
          Column(
            children : <Widget>[
              DrawerProfile(),
              FlatButton(
                child: Text('Profile'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Team'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Website'),
                onPressed: () {},
              ),
            ]
          ),
          Column(
            children : <Widget>[
              Text('Social Media'),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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