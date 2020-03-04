import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/FormPage.dart';
import 'package:techstorm/Screens/EventPages/Form/TeamFormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class RO_Picker extends StatefulWidget {
  @override
  _RO_PickerState createState() => _RO_PickerState();
}

class _RO_PickerState extends State<RO_Picker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>TeamFormPage(eventType: 'Roverse', eventName: "ROPICKER", minMembers: 1, maxMembers: 5,)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('RO Picker'),
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
                          "RO Picker",
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
                  'assets/images/ROVERS/ropicker-min.jpg',
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
                                " At the end of the day, the job is to pick the blocks and move to the finishline as fast as you can !",
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
                                "BPPIMT Teams: INR 100 /-\nOther Teams: INR 120 /-",
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
                                "Team Rules:\n1 There can be a minimum of 3 and a maximum of 5 unique members in the team. \n2. Team Members need to bring their college ID cards.In the prelm there will be obstacles,teams have to avoid the obstacles and put the ball in thee basket. \n3. Te paticipants wil bwe provided with a 220V,50Hz single phase power supply. \n4. The decision of coordinators will be final. \n",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "GamePlay Rules: \n1. This is a time based pick and place event so fastest and the most efficient robots will win. \n2. All the rounds will be solo with increasing arena complexities can be box number or hurdles towards the finals. \n3. Time taken by the robots to complete the track will be the only criteria of judgement for qualification to the next round. \n4. There will be total 2min of technical help for every team which can be taken at most 2 division e.g.: 1 min 30 sec + 30 sec or 1 min + 1 min\n5. Under any circumstances, after the beginning of the round team participants must not touch the bots except in the technical timeout. \n6. Teams who chose to quit for technical fault will not be considered while shortlisting candidates for the next round in any case. \n7. Stepping on the track is forbidden. This can only be done by coordinators. Failing to abide will lead to disqualification without any refunds. \n8. No two team should share the same robot. \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                              Text(
                                "Bot Specification: \n1. Participants will be provided with a standard 220-volts 50 Hz AC power supply outlet. \n2. The robot should fit in a box of dimension 40cm x 30cm x 30cm with the picking mechanisms. \n3. Maximum weight of robot should not be more than 4 kg. External control device shall not be considered for weight and size measurement. \n4. The robot may be wired or wireless. There is a Special credit for wireless bot. But for wireless, it is mandatory to use dual frequency remote or else it will lead to disqualification. For wired bots, the length must be enough for cover the entire arena. \n5 Lego kit or spare parts are strictly prohibited. However team can use readymade gear system. \n6. The potential difference between any two points should not exceed 24 V DC at any point of time during the run round is an aptitude round with tricky questions, out of which 4 teams proceed to the finals. \n",
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
                                    "Sayani Debnath",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'7003014085'}');
                                },

      ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Sourasish Banerjee",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'9830762575'}');
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