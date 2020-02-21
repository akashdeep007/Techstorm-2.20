import 'package:flutter/material.dart';
import 'package:techstorm/event/EventPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.hotel,
                    size: 28,
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.hotel,
                    size: 28,
                  )),
            ]),
      ),
      drawer: Drawer(
        child: Container(
          child:ListView(
            children: <Widget>[
              ButtonTheme(
                  height: 60,
                  child: FlatButton(
                    color: Color(0x3282b8),
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.event),
                            Text(
                              "Events",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => EventPage()));
                    },
                  ),
                ),
            ],
          ),
          width: 50,
          height: 1000,
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("TechStorm 2.20",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        ),
      ),
    );
  }
}
