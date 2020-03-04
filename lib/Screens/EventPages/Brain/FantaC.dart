import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/FormPage.dart';
import 'package:techstorm/Screens/EventPages/Form/TeamFormPage.dart';
import 'package:url_launcher/url_launcher.dart';

class FantaC extends StatefulWidget {
  @override
  _FantaCState createState() => _FantaCState();
}

class _FantaCState extends State<FantaC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => TeamFormPage(
                        eventName: 'FantaC', minMembers: 2, maxMembers: 2,)));
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
        title: Text('FantaC'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/BRAIN/fc-min.jpg'),
                fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text(
                  "Fanta-C",
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
                  subtitle: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Muskan Verma",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              launch('tel:${'9883267071'}');
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Ayush Raj",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              launch('tel:${'6290754213'}');
                            },
                          ),
                        ],
                      )
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
