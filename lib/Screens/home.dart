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
    sliverBack =
        Image.asset("assets/images/logo.png", fit: BoxFit.fitHeight);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
queryData = MediaQuery.of(context);
var sw=queryData.size.width;
var pad=MediaQuery.of(context).padding.top;
    return SafeArea(
      top: true,
          child: WillPopScope(
      onWillPop: () async => false,
      
          child: Scaffold(
        drawer: CustomDrawer(),
        body: NestedScrollView(
      
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10.0),
              child: Text(''),),
            automaticallyImplyLeading: true,
            backgroundColor: Colors.black,
            expandedHeight: 160.0,
            floating: false,
            pinned: true,
            stretch: true,
            actions: <Widget>[
              LayoutBuilder(
                builder: (context, constraints){
                  print(constraints.maxHeight);
                  return constraints.maxHeight <= 50.0 ?Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(5),child: 
                      Image.asset('assets/images/logo.png', width: 50,),),
                    ],
                  ) : Container();
                },
              ),
              
              SizedBox(width: 20,),
            ],
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return FlexibleSpaceBar(

                    collapseMode: CollapseMode.parallax,
                    centerTitle: true,
                    // title: Text(constraints.maxHeight.toString(),
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 24.0,
                    //       fontFamily: 'TempestApache'
                    //     )),
                    // title: constraints.maxHeight <= 110.0
                    //     ? Container(
                    //         padding: EdgeInsets.only(top: 32, right: 10),
                    //         height: 128,
                    //         alignment: Alignment.bottomRight,
                    //         child: Image.asset('assets/images/logo.png'))
                    //     : Container(),
                    background: Container(
                        padding: EdgeInsets.only(bottom: 10, top: 30),
                        child: sliverBack));
              },
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
                  padding: EdgeInsets.all(20),
                  child: Center(
                      child: Text(
                    "Events",
                    style: TextStyle(
                        fontSize: headingSize,
                        fontFamily: 'BladeRunner',
                        color: Colors.white),
                  )),
                ),
                EventScroll(
                  context: context,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Center(
                      child: Text(
                    "Trailer",
                    style: TextStyle(
                        fontSize: headingSize,
                        fontFamily: 'BladeRunner',
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
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                      child: Text(
                    "Sponsors",
                    style: TextStyle(
                        fontSize: headingSize,
                        fontFamily: 'BladeRunner',
                        color: Colors.white),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: SponsorsList(),
                ),
                Container(

                    height: 80,
                          color: Colors.white38,
                          child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                padding: EdgeInsets.all(10),
                child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(100.0),
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
                          image: AssetImage(
                              "assets/images/LOGOfo.png"),
                              
                        )))),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                
                "\t\t\t\t\tOn 7th to 9th April 2020\nEveryone is welcome to witness\n10th installment of TechStorm ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Container(
                child: Container(
                  margin: EdgeInsets.all(15),
                    height: 43.0,
                    width: 43.0,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(100.0),
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
                          image: AssetImage(
                              "assets/images/bppimt.png",),
                          
                        ))))
                          ]),
                    ),
                  )
              ]),
            ),
          ),
        );
      }),
        ),
      ),
          
          ),
    );
  }
}
