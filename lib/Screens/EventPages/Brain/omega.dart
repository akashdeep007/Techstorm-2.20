import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/FormPage.dart';
import 'package:url_launcher/url_launcher.dart';

class Omegatrix extends StatefulWidget {
  @override
  _OmegatrixState createState() => _OmegatrixState();
}

class _OmegatrixState extends State<Omegatrix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => RegisterForm(
                       eventType: 'Brain_Teasers', eventName: 'OMEGATRIX')));
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
        title: Text('Omegatrix'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back.gif'),
                fit: BoxFit.cover)),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text(
                  "OMEGATRIX",
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
                  'assets/images/BRAIN/omega-min.jpg',
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
                        " Omegatrix is an integral part of recreational mathematics. Event is open to any studentwith an interest in mathematics. We Judge yourself by logging into deep well of mathematicsand test your grey matter and mental ability through many other mind blogging and brainstorming question puzzles. This event is divided into two parts namely –prelims and mainsround. The finalist will be tested on their logical reasoning,time management , analytical skills in final.",
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
                        " 1.Only individuals can participate.\n2.Every participant must carry her/his College identity card during the day of event.\n3.Utilizing any kind of electronics aid will lead to disqualification.\n4.Every participant must produce the given confirmation code during registration. Without proper confirmation code no participant can be registered.\n",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        ''' Prelims:
Every question will contain 4 options, among them 3 will wrong and 1 will correct.
Round 1:
1) No. of questions: 30
2) Allotted time: 30 mins
3) Participant will get 1 marks for right answer and No Negative marking.
4) No marks will be deducted for unmarked questions.

Round 2:
1) No. of questions: 30
2) Allotted time: 30 mins
3) Participant will get 2 marks for right answer and Negative marking is 1 for
per wrong answer.
4) No marks will be deducted for unmarked questions.

Tie Breaker Rule
1) Less number of negative marking will get higher priority.

Finals:

Round 1:
1) No. of questions: 25
2) Allotted time: 30 mins
3) Participant will get 2 marks for right answer and Negative marking is 1 for
per wrong answer.
4) (1/2) marks will be deducted for unmarked questions.

Round 2:
1) It will be a rapid fire round.
2) No. of questions: 20
3) Allotted time: 15 mins
4) Participant will get 3 marks for right answer and Negative marking is 1 for
per wrong answer.

In case of a tie round 3 will occur.
In case of a tie after the 2 nd round of final, the tied teams will get into a buzzer/bell round.''',
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
                      "Registration fees",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        "BPPIMT Teams: INR 30 ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Other Teams: INR 40 ",
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
                            "Sreoysi Saha",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              launch('tel:${'8777056914'}');
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Bidisha Maji",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              launch('tel:${'6291571746'}');
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
                        "To be announced",
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
