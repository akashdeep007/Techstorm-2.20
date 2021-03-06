import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back.gif' ),
                fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text(
                  "About Us",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: "TempestApache",
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title:
                      Center(child:ClipRRect(child:Image.asset('assets/images/unnamed.png', fit: BoxFit.cover, scale: 4,),),),
                      
                     
                    
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "B. P. Poddar Institute of Management and Technology presents to you, Techstorm 2.20, where we aim at diversifying the manifold fields of technology. Ever since its advent in our institute from 2011, we have always believed in the amalgamation of technology and imagination.\n 'Imagination is more important than knowledge. For knowledge is limited, whereas imagination embraces the entire world, stimulating progress, giving birth to evolution'\n-Albert Einstein\n\nWhile continuing to celebrate this legacy, BPPIMT welcomes you to this edition of Techstorm 2.20 - the technical festival of BPPIMT family.\n\nWe invite you all to come and unleash your technical skills and creativity, be our esteemed guest and take back along with you an enriching experience that you have never experienced before.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
            ),
            Divider(
              height: 20,
            ),

           

            Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Center(
                    child: Text(
                      "Contact Us",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children : <Widget> [Column(
                      children: <Widget> [Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Phone Number",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              launch('tel:+${'03340619174'}');
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Location           ",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.pin_drop),
                            onPressed: () {
                              launch('https://www.google.com/maps/place/B.P.+Poddar+Institute+of+Management+and+Technology/@22.6296285,88.4323668,17z/data=!3m1!4b1!4m5!3m4!1s0x39f89e3149180d5b:0x9abf8a7af72c0eef!8m2!3d22.6296285!4d88.4345555');
                            },
                          ),
                        ],
                      )]
                    ),]
                  )),
            ),

            SizedBox(
              height: 80,
            ),
            // Center(child: RaisedButton(onPressed: (){},child: Text("Register"),))
          ],
        ),
      ),
    );
  }
}
