import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/NFormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class RO_Navigator extends StatefulWidget {
  @override
  _RO_NavigatorState createState() => _RO_NavigatorState();
}

class _RO_NavigatorState extends State<RO_Navigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>NFormPage(eventType: 'Roverse', eventName: "RONAVIGATOR", minMembers: 1, maxMembers: 5,)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('RO Navigator'),
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
                          "RO Navigator",
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
                  'assets/images/ROVERS/ronav-min.jpg',
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
                                "The autonomous robot will have to track a black line on a white surface and has to completethe track in shortest period of time, starting from the start point to the finish point.There will be some checkpoints in the track, which the bot has to indicate by glowing LED light.\nThe problem statement, the track and the point system of the final round will be disclosedto teams after the prelim round is completed.",
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
                                "BPPIMT Teams: INR 80 /-\nOther Teams: INR 100 /",
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
                                "•	Rules: \n1.	Each team can have a minimum of 2 members and maximum of 4 members.\n2.	No same member can take part in two different teams.\n3.	The members of the team can be from different college or university. \n4.	All the team members are required to bring their ID card with them. \n5.	Each team can present only one bot. \n6.	Prelims will be held on the first day of Tech-Fest. The qualified teams need to come on the next day for final round about which they will be informed. \n7.	The co-ordinators can change some of the rules in case of special cases, if required. \n",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "•	Bot Specification: \n1.	Bot dimension must be such that it fits in a cube of 20 x 20 x 20 cubic cm. Individual parameters to be measured with 10% tolerance. \n2.	The bot must be an autonomous robot, no remote or controller should control the robot. \n3.	The participants will be provided with a 220 V, 50 Hz single phase power supply. \n4.	The bot must weigh upto a maximum of 4 kg. Heavier bot will be disqualified. \n5.	The bot should be constructed only using IR sensor not IC engine or any hard coding or else the team will lead in disqualification. \n6.	The bot must be designed by the team itself. It should not be ready-made. \n7.	Damage to the arena will lead to disqualification. \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                              Text(
                                "•	Gameplay(PRELIMS): \n1.	The line will be black on white background with some colourful lines too. \n2.	If the bot gets stuck in any part of the arena they are allowed to touch and place the bot manually for 2 times for each stage of the arena. No more chances will be entertained. \n3.	The bot with minimum completion time and highest score will lead the board. \n4.	Between two consecutive run the clock will not be paused. \n5.	A technical timeout of 2 mins will be allowed once only. \n6.	Hard coding is allowed. \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                               Text(
                                "**IMPORTANT NOTE: If a team makes a wireless bot that team will be credited extra points. \n",
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
                            children: <Widget>[Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Abhishek Gupta",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'8583961560'}');
                                },

      ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Madhurima Bose",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'9051733104'}');
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
                                "To be announced",
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