import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/NFormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class RO_Combat extends StatefulWidget {
  @override
  _RO_CombatState createState() => _RO_CombatState();
}

class _RO_CombatState extends State<RO_Combat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>NFormPage(eventType: 'Roverse', eventName : 'ROCOMBAT', minMembers: 3, maxMembers: 5,)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('RO Combat'),
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
                          "RO Combat",
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
                  'assets/images/ROVERS/rocom-min.jpg',
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
                                "Two bots will start from two opposite sides of arena.There will be an inclined plane and a combat zone. Points will be provided in both zones.There will be some changes in the arena from preliminary round to final round.In preliminary rounds there will be a cubical arena with two inclined planes.At the entrance there will be a flap gate and an inclined plane through which bots will enter.Two cubical ditches will be present inside the arena at possible edges.Preliminary rounds will be of 1200 points and later stages will be of more points.",
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
                                "BPPIMT Teams: INR 120 /-\nOther Teams: INR 150 /",
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
                                """BOT SPECIFICATION

1.There will be three categories based on the weight of the bots
Category 1- 16kg to 30kg (1 st winner will be selected from this category)
Category 2- 7kg to 15kg (1 st runners up will be selected from this category)
Category 3- maximum 6kg (2 nd runners up will be selected from this category)
2.Dimension should be less than (50*50*50) cm^3 including all gadgets.
3.Bot’s wheels should fit in a 45*45cm^2 platform at the time of start.
4.No readymade lego kits will be allowed.
5.A 230 v ac voltage will be provided to each team.
6.Ac motor in weapon system or wheels is strictly prohibited. Use of hammering tools is allowed. But in case of vertical hammering, the hammering should stop at a miniumum height of 5cm from the surface of arena, so that the arena does not get damaged. Cutting, fire and throwing weapons are NOT allowed.
7.The surface of arena may get slippery, the bots should bear that.
8.Wires should be sufficiently long & should not slack or touch the arena, if it does organizer will not be responsible for any damage.

RULES AND REGULATIONS :

1.The bots need to enter the arena through flap gates. For this 100 points will be given.
2.For entering to the battle ground or combat zone through the inclined plane successfully 200 points will be given.
3.If a bot is put in the pit inside the arena by opponent it will give the opponent full 300 points.
4.100 points will be given for pushing the bot of the opponent team outside the arena.
5. Any team can ask for time out due to technical faults. One time out will be allotted for 3 minutes. After that 10 points will be deducted for each minute.
6.50 points will be deducted for each hand touch.
7. In any way if the hammering tool touches the arena surface 100 points will be deducted from the respective team.
8. Any kind of damage to the arena will lead to direct disqualification of the team.
9 a) Duration of a match is 20 minutes.
b) In the preliminary stage, the team that will reach 1200 points first, will qualify for the next round.
c)In case of the teams fail to reach 1200 points within the stipulated time, the team with the higher score at the end of 20 minutes shall qualify for next round.
10. The team with the highest score within 10 minutes shall qualify for further rounds.
11. Points will be deducted for exceeding the weight and dimension limits (mentioned under bot specification)
a) 100 points will be deducted for each extra kg
b) 20 points will be deducted for each extra cm.

TEAM SPECIFICATIONS
1. Each team can have a maximum of 5 members. No same member can be present in two teams.
2. The members of a team can be from different colleges/universities.
3. Team members need to bring their college ID cards and valid govt. ID cards (voter ID card or PAN card or Aadhar card Xerox copy).
4. Each team can present only 1 bot.
5. Any member who is a part of RO-COMBAT organizing team cannot take part in RO-COMBAT event.
6. Preliminary event will be held on the first day of techfest. Qualified teams need to come on next day for further rounds about which they will be informed.
7. In preliminary rounds, team will face each other on first come first serve basis. However it will be tried that bots with resembling features will face each other if possible. However the ultimate fixture will be decided by the coordinators. Any kind of misbehaviour will lead to disqualification of the team immediately.
8. The reporting time of the teams for the event is 11:00 AM on both days. It is expected to be followed strictly.
The coordinators may change the rules in case of emergency. In case of any disputes the decision of the coordinators will be considered as final.
""",
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
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Soumyadyuti Bagchi",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'7044075625'}');
                                },

      ),
                                ],
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Barun Saha",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'9733838669'}');
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