import 'package:flutter/material.dart';
import 'package:techstorm/Screens/CustomDrawer/Abouus.dart';
import 'package:techstorm/Screens/CustomDrawer/Team.dart';
import 'package:techstorm/Screens/CustomDrawer/developer.dart';
import 'package:techstorm/Screens/CustomDrawer/schedule.dart';
import 'package:techstorm/Screens/EventPages/Form/qr.dart';
import 'package:techstorm/Screens/sponsercarousal.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  _launchFacebook() async {
    const url = 'https://www.facebook.com/AmorTentia1515/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchMaps() async {
    const url =
        'https://www.google.com/maps/dir//bp+poddar/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x39f89e3149180d5b:0x9abf8a7af72c0eef?sa=X&ved=2ahUKEwiggaSdoPfnAhUISX0KHaLEBUsQ9RcwDnoECCYQDw';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchWebsite() async {
    const url = 'https://www.facebook.com/AmorTentia1515/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
            Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 12,bottom:50),
                child: Column(children: <Widget>[
                  // FlatButton(
                  //   child: Text('Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  //   onPressed: () {},
                  // ),
                  SizedBox(
                        height: 30,
                      ),
                  Container(height:100,child: Image.asset("assets/images/lo.jpg"),),
                  SizedBox(
                        height: 50,
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 15,
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Schedule',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () { Navigator.push(context,new MaterialPageRoute(builder: (context) =>SchedulePage()));},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.graduationCap),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Results',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(
                                      child:
                                          Text("Results will be declared soon ")),
                                );
                              });
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.shoppingBasket),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Sponsers',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () { Navigator.push(context,new MaterialPageRoute(builder: (context) =>Carousal()));},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.teamspeak),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Team',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onPressed:  () { Navigator.push(context,new MaterialPageRoute(builder: (context) =>TeamPage()));},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.dev),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          'Developer',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () { Navigator.push(context,new MaterialPageRoute(builder: (context) =>DevPage()));},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.info),
                      SizedBox(
                        width: 5,
                      ),
                      FlatButton(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          '\About Us',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {Navigator.push(context,new MaterialPageRoute(builder: (context) =>AboutusPage()));},
                      ),
                    ],
                  ),
                ]),
              ),
              Column(children: <Widget>[
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.firefoxBrowser),
                      onPressed: _launchFacebook,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.map),
                      onPressed: _launchMaps,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      onPressed: _launchFacebook,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
            ]),
              ]),
    );
  }
}
