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
                image: AssetImage("assets/images/back.gif"),
                fit: BoxFit.cover)),
        child:  Column(
          children: <Widget> [Expanded(
            child: GridView.count(
              
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 20,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: <Widget>[
                Myitems(
                    Image.asset(
                      'assets/images/Team/A.jpg',
                      width:145,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/deba.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                    Myitems(
                    Image.asset(
                      'assets/images/Team/BHARTI.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/DEEPJYOTIFINAL-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/Facebookframesatra.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/KUNDUFINAL-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/lahafinal-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/NILOTPALFINAL-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/niprofinal-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/noor.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/raju.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/SAMIDHA2-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/shankarfinal-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                Myitems(
                    Image.asset(
                      'assets/images/Team/SOUMILIFINAL-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                     Myitems(
                    Image.asset(
                      'assets/images/Team/sumanfinal-min.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                     
                                         Myitems(
                    Image.asset(
                      'assets/images/Team/SUPRAKASH.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                                         Myitems(
                    Image.asset(
                      'assets/images/Team/SATYAKI.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                                         Myitems(
                    Image.asset(
                      'assets/images/Team/AHANA.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),
                                         Myitems(
                    Image.asset(
                      'assets/images/Team/RINI.jpg',
                      width: 145.0,
                      height: 145,
                      fit: BoxFit.cover,
                    ),
                    "abc"),

                    
              ],
            ),
          ),
          ]
        )));
  }
}
