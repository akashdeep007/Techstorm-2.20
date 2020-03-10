import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/NFormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class RO_Wings extends StatefulWidget {
  @override
  _RO_WingsState createState() => _RO_WingsState();
}

class _RO_WingsState extends State<RO_Wings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>NFormPage(eventType: 'Roverse', eventName: "ROWINGS", minMembers: 3, maxMembers: 5,)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('RO Wings'),
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
                          "RO Wings",
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
                  'assets/images/ROVERS/rowings-min.jpg',
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
                                "Test your imagination with your measurable skills that will take you to the winning paramount of the event robo-spring. Race your drone against time and across obstacles course from start to finish at full throttle. The whole event is divided into parts with hurdles at each stage. So buckle your skills and test your control.",
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
                                "GAME PLAY RULES\n1.The height of each pole will be of 1m with a circle mounted on it. \n2.The circles contain balls hanging to it. The drone should pass through the circle without touching the balls. \n3.Maximum height of the multicopter from the ground is of 1.2m. \n4.You have to start from origin and follow the path neatly without interfering obstacles, area and ground. \n",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "SCORING RULES FOR BOTH PRELIMS AND FINALS\n1.Passing through each circle will be rewarded 200 points. \n2.Touching the balls will cost 50 points. \n3.Technical Fault will cost 20 points. \n4.Touching balls at the last portion of the path will cost 60 points. \n5.Landing improperly will cost 20 points. \n6.Flying of drone successfully in designed shape will be rewarded 100 points. \n7.Landing properly on box will be rewarded 50 points. \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                              Text(
                                "DRONE SPECIFICATION\n1.Use a tri-copter, quad-copter, hexa-copter or octa-copter model. \n2.Use of metallic propellers is prohibited. \n3.Use electrical motors only. \n4.Decide the dimensions of your craft carefully. \n5.Use of automated features of flight control of board will lead to direct disqualification. \n",
                                style: TextStyle(
                                    fontSize: 18),
                              ),
                              Text(
                                "GENERAL RULES\n1.Every participant must bring their college id card along with a Xerox copy of his/her voter ID card or PAN card or Adhar card. \n2.Every participant must be a student of any reputed institute. \n3.Max of five members allowed in a team. \n4.On completion of the path, land your multicopter accurately on the box placed at the end of the path. \n5.Time limit to complete the task is of 5 minutes. \n6.Maximum of three faults is allowed which includes touching the ground, crossing maximum height limit of 1.2m, any collision with the arena etc. Time will not be paused. \n7.Time points will be awarded only to the teams which will complete the whole task in allotted time of 5 minutes. \n8.A technical fault time would be provided with a valid reason and it would cost points. \n9.If any unethical, fraudulent behavior is found, which will violate the rules of the game play, then the corresponding teams will be disqualified. \n10.The teams will be selected in the prelims according to the time taken to clear the track and scores achieved. \n11.The final round will be conducted among the selected teams. \n12.Note the rounds will dependent upon the participation. \n13.At any time we can change the arena rules and the decision of the coordinator will be final. \n",
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
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Ankita Das",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width:20),
                               IconButton(icon: Icon(Icons.phone), 
                            onPressed:() {
                              launch('tel:${'9163196780'}');
                            },

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