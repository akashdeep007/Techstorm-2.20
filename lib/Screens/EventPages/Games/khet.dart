import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/FormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class KHET extends StatefulWidget {
  @override
  _KHETState createState() => _KHETState();
}

class _KHETState extends State<KHET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RegisterForm(eventType: 'Games', eventName: "KHET",)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('KHET'),
                backgroundColor: Colors.black87,
              ),
              body: Container(
                                    decoration: BoxDecoration(
                      image : DecorationImage(
                        image : AssetImage('assets/images/back.gif'), fit:BoxFit.cover
                      )
                    ),
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          "KHET",
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
                  'assets/images/GAMES/khet-min.jpg',
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
                                " The Laser Game KHET 2.0: Mind blowing laser fun for players ages 9-99.Using simple rules that can be learned in minutes, players alternate turns movingEgyptian themed mirrored Pieces, after which they fire their REAL (eye-safe) laser withthe goal of blasting their opponents PHARAOH to win the game! BASIC GEOMETRICAL CONCEPT ISTHE KEY FACTOR IN THIS GAME.",
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
                                "BPPIMT students: INR 30 /",
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
                                "PRELIMS-I: 1.Two Players will be in one set at a time.2. In each turn player will get max 2 minutes for next 30 seconds -1 will be added and for next 30 seconds another -1 will be added.\n3. If he/she does not make any move in stipulated time then and there he/she will be eliminated and opponent shall be declared as winner.\n4.For each warning -3 will be added for breaking any rule i.e. touching mirror, rotate pyramid more than 45 degree, rotate and then move element). After getting 3 warnings participant will be then and there eliminated.\n5. Marks division: Pyramid 5, Anubis 10, Rule breaking -3\n7. If participant hits his/her own element then the corresponding marks will be deducted.\n6. If the total game time exceeds 15 minutes then another 5 minutes will be given to end the game. In this case no marks will be deducted from any participant but they will be warned.\n7. If the match will tie then marks will be considered and if marks will also happen to be same then total time taken will be considered. \nPRELIMS-II:\nTime limit for each move will be 1.5 minutes and after that he/she will be given another 1 min to move.\nQuarter final, Semifinal & Final :\n\n1. In each turn player will get max 2 minutes for next 30 seconds -1 will be added and for next 30 seconds another (-1) will be added.\n2. There is no total time limit for entire game. \n\nSetups: \nPrelims: Classic\nQuarter final: Dynasty\nSemifinal & Final: Imhotep",
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
                                    "Priyanka Mehta",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'8910016185'}');
                                },

      ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Dibyotama Chatterjee",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(width:20),
                                   IconButton(icon: Icon(Icons.phone), 
                                onPressed:() {
                                  launch('tel:${'8240259213'}');
                                },

      ),
                                ],
                              )
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