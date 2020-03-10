import 'package:flutter/material.dart';

import 'package:techstorm/Screens/EventPages/Form/NFormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class RO_Carrom extends StatefulWidget {
  @override
  _RO_CarromState createState() => _RO_CarromState();
}

class _RO_CarromState extends State<RO_Carrom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>NFormPage(eventType: 'Roverse', eventName: "ROCARROM", minMembers: 1, maxMembers: 5,)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('RO Carrom'),
                backgroundColor: Colors.black87,
              ),
              body: Container(
                                    decoration: BoxDecoration(
                      image : DecorationImage(
                        image : AssetImage('assets/images/back2.gif'), fit:BoxFit.cover
                      )
                    ),
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          "RO Carrom",
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
                  'assets/images/ROVERS/rocar-min.jpg',
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
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                "Think you are a carrom champ, then ro-carrom is the crown jewel platform for you. Here your mind and finger coordination is not on the board but on the control of your buddy present on the board. Ro-carrom is the best platform to show that your team and your bot are connected through the same string forming a beautiful ornament from your lustrous bonding, understanding and awareness. Pocket carrom-men, overcome obstacles, defeat your opponent and show everyone that you and your bot are bestfriends.",
                                style: TextStyle(fontSize: 18),
                              ),
                              
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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
                                  style: TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.w500),
                                ),
                              ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                "FEE 100 for bppimt\n150 for non bppimt",
                                style: TextStyle(fontSize: 18),
                              ),
                             
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                "GAME RULES \n1. Points will be awarded for a successful knock in the pocket.\n 2. Team can pocket one carrom man at a time.\n  3. Pocketing bot is a FOUL. Team committing a FOUL will be penalized.\n 4. If carrom men  falls out of the arena, the team that made the FLICK will be penalized. \n5. Any player pocketing the queen is required to cover it immediately by pocketing one of their carrom men within 10 seconds. If the player fails to cover it, the queen is returned to the centre. \n6. Intentionally hitting the bot of the opposite team is a FOUL. \n 7. Decision of the coordinators will be final.\n ",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "BOT SPECIFICATIONS \n1. The dimensions of the bots should be 25*25*25 cm.\n 2. The weight of the bot should be within 3 kg, no external weights are allowed, otherwise the corresponding team will be disqualified .\n 3. 10% tolerance would be allowed in 25cm lengths & any deviations from the above mentioned dimensions may lead to disqualification of the team.\n 4. Readymade toy cars or Lego or IC engines or hydraulic systems are not allowed.\n 5. The robot should be remotely controlled.\n ",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                              Text(
                                "SCORING \n1. Each carrom-men : 20 points\n 2. Queen : 50 points \n3. Pocketing obstacles: -5 points \n4. Flick: -5 points\n 5. Foul : -10 points \n6. Any harm to arena : Disqualify \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                              Text(
                                "GENERAL RULES \n1. Each team can have maximum 5 members.\n 2. Students from different institutions can form a team provided that each member of the team contains the identity card of his/her respective institute along with a Xerox copy of voter ID card or PAN card or AADHAR card.\n 3. No fans or blowing devices are allowed.\n ",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Abhishek Sarkar",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'9852169210'}');
                                },

      ),
                                ],
                              )
                            
                          ,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Anubhab Majumder",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'98697238442'}');
                                },

      ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
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
                    SizedBox(height: 80,),
                    // Center(child: RaisedButton(onPressed: (){},child: Text("Register"),))
                  ],
                ),
              ),
            );
  }
}