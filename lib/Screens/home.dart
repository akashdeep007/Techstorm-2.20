import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:techstorm/Screens/CustomDrawer/CustomDrawer.dart';
import 'package:techstorm/Screens/HomeEvent/HomeEvents.dart';
import 'package:techstorm/Screens/HomeEvent/Sponsors.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> with TickerProviderStateMixin {
  _launchYoutube() async {
  const url = 'https://www.youtube.com/watch?v=bDdXe51yphI&list=RDbDdXe51yphI&start_radio=1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


@override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment : MainAxisAlignment.spaceBetween,
          children : <Widget> [
            Container(padding : EdgeInsets.all(10) ,child: Icon(Icons.hotel, size: 28,)),
            Container(padding : EdgeInsets.all(10) ,child: Icon(Icons.hotel, size: 28,)),
          ]
        ),
      ),
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("TechStorm 2.20",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      )),
                      background: Image.asset('assets/images/ts2019.jpeg',
                        fit: BoxFit.fitHeight,
                      )),
            ),
          ];
        },
        body: LayoutBuilder(
                  builder : (context, contraints) { return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: contraints.maxHeight
                      ),
                                          child: Container(
              decoration: BoxDecoration(
                image : DecorationImage(
                  image : AssetImage("assets/images/back.gif"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget> [
                SizedBox(height: 80,),  
                Center(child: Text("Events", style: TextStyle(fontSize : 36, fontWeight : FontWeight.bold, color: Colors.white),)),
                EventScroll(),
                Center(child: Text("Trailer", style: TextStyle(fontSize : 36, fontWeight : FontWeight.bold, color: Colors.white),)),
                Container(
                  height: 250,
                  width: 400,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/1.jpg'),
                      IconButton(icon : FaIcon(FontAwesomeIcons.play, size: 48,), onPressed: _launchYoutube),
                    ],
                  ),),
                Center(child: Text("Sponsors", style: TextStyle(fontSize : 36, fontWeight : FontWeight.bold, color: Colors.white),)),
                SponsorScroll()]
              ),
            ),
                    ),
          );
                  }),
      ),
    );
}
}