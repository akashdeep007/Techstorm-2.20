import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/TeamFormPage.dart';
import 'package:url_launcher/url_launcher.dart';

class AppMania extends StatefulWidget {
  @override
  _AppManiaState createState() => _AppManiaState();
}

class _AppManiaState extends State<AppMania> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => TeamFormPage(eventType: 'Brain_Teasers',
                        eventName: 'AppMania', minMembers: 1, maxMembers: 2,)));
          },
          label: Container(
              width: 100,
              child: Center(
                  child: Text(
                'Register',
                style: TextStyle(fontSize: 18),
              )))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text('App Mania'),
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
                  "APPMANIA",
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
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Image.asset(
                  'assets/images/BRAIN/am-min.jpg',
                  fit: BoxFit.fitWidth,
                )),
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
                      "Description",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "BP PODDAR INSTITUTE OF MANAGEMENT AND TECHNOLOGY presents APPMANIA in the awaitedTECHSTORM 2.20 Calling all the young innovators with a knack to hack together the nextdisruptive *Android, Web, iOS, Windows* applications to take the ever-growing marketof apps by storm. Register and present your application. This is your chance to make adent in the universe. The *APPMANIA* event will be held at our college on 12th April 2019.Interested teams (Minimum 1 Maximum 2 Members) can submit their names and complete theregistration .Our registration portal on our App/Website is OPEN!!!",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
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
                      "Registration fees",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "BPPIMT Teams: INR 100 /-\nOther Teams: INR 150 /-",
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
                      "Rules",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "1. A maximum of 2 members are allowed in a single team.One single participant can also represent the team.\n2. Final submission of the app along with the ppt is on the day of the event.\n3. Maximum Time Limit for PowerPoint Presentation and App Demonstration​ is 10 minutes. The Participating team may be penalised​ (score penalty) if time taken exceeds further.\n4. PPT should NOT contain more than 10 slides and must contain the following:\na. Technology Stack Used\nb. Dependencies of the App Idea(if any)\nc. Use-Case Diagram/Model\n 5. We advise all participating teams to carry their own laptops for their presentation and use their own Internet connection, otherwise they shall need to fill in a regulatory declaration form as per IT rules and regulations of the institute.\n6. All team members must carry a government ID proof (VoterID Card, Aadhar Card, PAN card, Passport) and a college Id-card during their participation at the event.\n",
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
                  subtitle: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Punit Khandelwal",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              launch('tel:${'9804747631'}');
                            },
                          ),
                        ],
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
                      "Prizes to won",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "To be Announced",
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
