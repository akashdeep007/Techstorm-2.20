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
  double headingSize = 36;
  double subHeadingSize = 24;
  Image sliverBack;
  _launchYoutube() async {
    const url =
        'https://www.youtube.com/watch?v=bDdXe51yphI&list=RDbDdXe51yphI&start_radio=1';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  void initState() {
    sliverBack = Image.asset("assets/images/only logo.png",fit: BoxFit.fitHeight, height: 1,);
    super.initState();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(sliverBack.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading : true,
              backgroundColor: Colors.black,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              stretch: false,
              flexibleSpace: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return FlexibleSpaceBar(
                    centerTitle: true,
                    // title: Text(constraints.maxHeight.toString(),
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 24.0,
                    //       fontFamily: 'TempestApache'
                    //     )),
                    title: constraints.maxHeight <= 125.0 ? Container(padding : EdgeInsets.only(top: 20),height : 64, alignment: Alignment.bottomCenter, child : Image.asset('assets/images/new logo.png')) : Text('TechStorm 2.20',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontFamily: 'TempestApache'
                        )),
                   background :  Container(height: 200 ,child : sliverBack)
                   );},
              ),
            ),
          ];
        },
        body: LayoutBuilder(builder: (context, contraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: contraints.maxHeight),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/back.gif"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                                      child: Center(
                          child: Text(
                        "Events",
                        style: TextStyle(
                            fontSize: headingSize,
                            fontWeight: FontWeight.bold,fontFamily: 'TempestApache',
                            color: Colors.white),
                      )),
                  ),
                  EventScroll(context: context,),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                                      child: Center(
                          child: Text(
                        "Trailer",
                        style: TextStyle(
                            fontSize: 36,fontFamily: 'TempestApache',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  ),
                  Container(
                    height: 250,
                    width: 400,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/1.jpg'),
                        IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.play,
                              size: 48,
                            ),
                            onPressed: _launchYoutube),
                      ],
                    ),
                  ),Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 10),
                                      child: Center(
                          child: Text(
                        "Sponsors",
                        style: TextStyle(
                            fontSize: headingSize,fontFamily: 'TempestApache',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  ),

                  SponsorsList(),
                  Container(
                    color: Colors.white38,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                        Widget>[
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color.fromARGB(100, 0, 0, 0),
                                        blurRadius: 5.0,
                                        offset: Offset(5.0, 5.0))
                                  ],
                                  border: Border.all(
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/new logo.png"),
                                  )))),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Container(
                              height: 43.0,
                              width: 43.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Color.fromARGB(100, 0, 0, 0),
                                        blurRadius: 5.0,
                                        offset: Offset(5.0, 5.0))
                                  ],
                                  border: Border.all(
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/bppimt.png"),
                                  ))))
                    ]),
                  )
                ]),
              ),
            ),
          );
        }),
      ),
    );
  }
}
