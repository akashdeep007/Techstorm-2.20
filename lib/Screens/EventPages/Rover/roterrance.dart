import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class RO_T extends StatefulWidget {
  @override
  _RO_TState createState() => _RO_TState();
}

class _RO_TState extends State<RO_T> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {}, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('RO terrance'),
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
                          "RO Terrance",
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
                child: Image.asset(
                  'assets/images/ROVERS/rot-min.jpg',
                  fit: BoxFit.fitWidth,
                )),
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
                              "Description",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                " The event consists of an arena which is a pathway filled with obstacles.The bot must be able to follow the path to overcome any obstacles coming its way ,e it water , sand , gravel , or any mechanical blockage. Points will be awarded onsuccessfully overcoming any obstacles otherwise negative points will be awarded.",
                                style: TextStyle(fontSize: 18),
                              ),
                              
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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
                                  style: TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.w500),
                                ),
                              ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                "BPPIMT Teams: INR 120 /-\nOther Teams: INR 150 /-",
                                style: TextStyle(fontSize: 18),
                              ),
                             
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                              "BOT SPECIFICATION:  \n1.The dimensions of the bot can be up to a maximum of 25 cm*25 cm*25 cm  excluding the control device dimensions.  \n2.	A bot may weigh up to 2kg , but not more than that.  \n3.	Maximum voltage between any two points on the bot must not exceed 24V DC .  \n4.The Chassis may be made of any material but weight of the bot must not exceed 2 kg.  \n5.Wheels can be of metal or any material but it must have a rubber tire on it.  \n6.Use of IC engines is prohibited.  \n7.	In case of wired bot sufficient amount of the wire must be brought by the participants. Any time loss due to entanglement is the responsibility of the participants.  \n8.	240V AC will be supplied as a power source for the bots.  \n",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "TEAM RULES:  \n1.Each team consist of  maximum four members.  \n2.No participants can be present in two teams .  \n3.Each member of the team must bring their own college ID . \n 4.	Teams will require registering themselves in the registration counter before they can participate in the event   \n5.	Each team have to keep their registration slip carefully for the issue of participants and winning certificates.  \n6.Wireless bot will be provided extra 100 bonus points over their total points.  \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                              Text("GAME PLAY RULES:  \n1.The team will be given maximum 4 min to complete the whole task.  \n2.	During the rounds, only  maximum of  two members of  a team are allowed in the arena, one member will control the bot and other to guide it. However , teams are allowed to switch members in different rounds.  \n3.	No last minute repairs will be allowed in the arena. However, each team can take time-out of 2 minutes once during the event.  \n  4.	Each team will be given a test run with their bots before the commences of the event.  \n5.	If the bot falls of arena or is unable to cross any obstacle the team may use a hand touch and place in its previous position. First  two hand touch will be free from point deduction. After two free touches marks deduction will be started.   \n6.	If you want to skip any part of obstacle then no point will be deducted but if you failed to complete any obstacles then the allocated point of that particular  obstacle part will be deducted  from your  total point.  \n7.	A particular obstacle part will be there in the arena, which will carry high bonus point and it will not going to deduct any point from total, if the player wanted to skip it or failed to complete it. \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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
                                    "Swastik Saha",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'9123803670'}');
                                },

      ),
                                ],
                              ),
                            
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Aindrila Sammaddar",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'9163664155'}');
                                },

      ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    Divider(height: 20,),
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