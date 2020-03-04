import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/FormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class FIFA extends StatefulWidget {
  @override
  _FIFAState createState() => _FIFAState();
}

class _FIFAState extends State<FIFA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RegisterForm(eventType: 'Games', eventName: "FIFA",)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('FIFA'),
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
                          "FIFA",
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
                  'assets/images/GAMES/FIFA.jpg',
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
                                "The lush green calls, the stage is set, the whistle blows, the balls roll.The time has arrived when tackles will be hard, shots will be saved, and blood will be shed, it\'s when the stalwarts rise and the weak fail, it\'s when VIRTUAL COMBATcomes into phase, it\'s when friends become enemies and rivalry dawns.There are differentrounds where each participant will have to play a one-to-one match against anotherparticipant.",
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
                                "BPPIMT students: INR 30 /-\n\nOther students: INR 50 ",
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
                                " 1. The players are not allowed to shoot the ball directly onto the crossbar from a corner kick in order to get a chance for a header when the ball rebounds or score directly from corner.\n2. It is not allowed to score a goal from one\'s own half of the field.\n3. It is forbidden to make a throw-in directly into the opponent\'s penalty area. Should a player throw the ball directly into the opponent\'s penalty area he shall be warned. Should he persist, he shall be disqualified from the tournament.\n4. Any goals resulting from a throw-in into the opponent\'s penalty area will not be counted.\n5. If a player changes his tactics, formation or line-up he has to kick the ball out of bounds after the changes so that his opponent is able to react.\n6. If a player is found to be intentionally delaying the game time by passing the ball around and clearly not attempting to score, he may be given a warning or lose by default at the referee\'s discretion.\n7. Prior to making any changes to one\'s team, the player that wants to make a change must be in possession of the ball and be in his own half before he pauses the game. In the last few minutes of the game it is not allowed to make any changes to one\'s team with the sole intent of delaying the match. Should this be the case, the player delaying the match will be warned by a referee and, should he persist after the warning, be attributed with a default loss of the match.\n8. In any case, a goal scored due to the use of a forbidden move shall not be counted.\n9. Should a player persist in playing with forbidden moves, he may be disqualified from the tournament.\n10. All complaints shall be dealt with after the match has been completed.\n11. Disconnection: Any connection loss between opponents due to system, network, PC, and/or power problems/issues.\n12. Set pieces are available. Man Marking is allowed.\nNo forward pass at kick-off, you must back pass the ball.\n13. You can choose your preferred controls; Manual, Semi or Assisted.\nTactical defending mode only.\nControllers are supplied by PLG. It is the responsibility of all Players to be familiar with the controller’s functions and mode of operation.\nIf a controller is defective, a Player can pause the game and notify the referee once only, if the player agrees the problem is fixed he may not pause again.\n14. Extra Time: extra time of two one (1) minute halves will be played in the event of a draw after regulation. Penalties will decide the winner if after extra time the scores are level.\n15.Goal Keeper: World Class\nInjuries: Off\nBookings: On\nReferee: Random\nCamera Settings: Tele-Broadcast\nTime of the Day: Night\nHome Team: Coin toss will decide.	Half: 4mins Groups\nHalf: 4mins Knock Out\nHalf: Bo3 6mins Qs to Final (depending on tournament)\nHandball: Off\nTime/Score display: On\nHUD: Player Name Bar\nOffside: On\nCamera: Tele-Broadcast\nRadar: 2D\nDefense type: Tactical only\nPitch Wear: None\nStadium: Neutral\nGoalkeeper Control: Yes\n",
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
                                "Partho Malakar",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width:20),
                               IconButton(icon: Icon(Icons.phone), 
                            onPressed:() {
                              launch('tel:+${'8910508026'}');
                            },

      ),
                            ],
                          ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Abhishek Kumar",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'7044383703'}');
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