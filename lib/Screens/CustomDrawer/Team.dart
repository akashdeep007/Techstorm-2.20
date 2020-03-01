import 'package:flutter/material.dart';


Material Myitems(Image im, String heading) {
  return Material(
    color: Colors.white.withOpacity(.8),
    elevation: 14,
    shadowColor: Colors.black12,
    borderRadius: BorderRadius.circular(34),
    child: Center(
        child: Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: im,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  heading,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "TempestApache",
                  ),
                ),
              )),
            ],
          )
        ],
      ),
    )),
  );
}

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Team'),
          backgroundColor: Colors.black87,
        ),
        body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back2.gif"),
                fit: BoxFit.cover)),
        child:  GridView.count(
          
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 20,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: <Widget>[
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
            Myitems(
                Image.asset(
                  'assets/images/BRAIN/OMEGATRIX.jpg',
                  width: 90.0,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                "abc"),
                
          ],
        )));
  }
}
