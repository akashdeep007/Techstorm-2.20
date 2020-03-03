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
                image: AssetImage('assets/images/back2.gif'),
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
            Card(
              color: Colors.white70,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title:
                      Center(child:ClipRRect(child:Image.asset('assets/images/BRAIN/OMEGATRIX.jpg'),),),
                      
                     
                    
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        " Here is a chance to prove yourself that you are not only a programmer but an elegant andefficient coder. Plunge in to unravel the deep Coding secrets and swim up to the shorewith the best algorithm. The three upcoming rounds will give your mind a real twist and turn so be ready to decode the trail.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
            ),
            Divider(
              height: 20,
            ),
            Card(
              color: Colors.white70,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Center(
                    child: Text(
                      "Registration fees",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "BPPIMT Teams: INR 60",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Other Teams: INR 80",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
            ),
            Divider(
              height: 20,
            ),
            Card(
              color: Colors.white70,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Center(
                    child: Text(
                      "Rules",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "FIRST ROUND: D-CODE\n1.This is a preliminary round consisting of multiple choice questions on C programming language.\n2.Time Limit:45 Minutes\n3.There will be negative marking for wrong answers.\n\nSECOND ROUND: BUG-A-THON\n1.This is a Debugging round.\n2. The teams will be provided with erroneous programs. They will have to face the challenge of debugging them.\n3.Time Limit:40 Minutes\n\nTHIRD ROUND: CODE SPRINT\n1.The Groups are expected to exhibit their skills in programming.\n2.They will be allowed to code in anyone of the following programming languages- C, C++, JAVA and PYTHON.\n3.Time Limit: 90 Minutes\n",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
            ),
            Divider(
              height: 20,
            ),
            Card(
              color: Colors.white70,
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
                    children: <Widget>[
                      Text(
                        "Akashdeep Bhattacharya",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Icon(Icons.phone),
                        onPressed: () {
                          launch('tel:+${'9051633040'}');
                        },
                      ),
                    ],
                  )),
            ),
            Divider(
              height: 20,
            ),
            Card(
              color: Colors.white70,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              child: ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Center(
                    child: Text(
                      "Prizes to won",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "1st prize : 5000",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "2nd prize : 2000",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "3rd prize : 1000",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
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
