import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/NFormPage.dart';
import 'package:url_launcher/url_launcher.dart';


class Expo extends StatefulWidget {
  @override
  _ExpoState createState() => _ExpoState();
}

class _ExpoState extends State<Expo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>NFormPage(eventType: 'Creativity', eventName: "EXPOSCIENCE", minMembers: 4, maxMembers: 4,)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('Exposcience'),
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
                          "Exposcience",
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
                  'assets/images/expo/expo-min.jpg',
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
                               """Exposcience is a science model competition for the school students with the sole objective of fostering scientific curiosity, creativity among students. This competition provides a platform to exhibit and share their knowledge and passion for science through interaction with peers and audiences.
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
                                  "Objective",
                                  style: TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.w500),
                                ),
                              ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                """Science always reveals a new truth, a new discovery, an unknown reality. As the necessities change and so the inventions and development. It keeps growing and can never be dull and boring. Science exhibitions explore the creative talent of the students and force them to think outside of the box. Science exhibitions develop a scientific spirit and curiosity in a student which in turn forces them to think and creatively find solutions to the challenges. Students enjoy learning through such exhibitions and feel a sense of belonging as they make the models with their own hands.
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
                              "Rules",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                             Text("""Qualification Rules
Teams should be nominated by school. Each team can have 4 members.  One teacher mentor need to associate with the team.
One school may have multiple teams.
Each team should submit a proposal or report of the model including the following points:
Title of the model/project
Working Principle.
Component.
Requirements (if any for exhibition)
""",style: TextStyle(fontSize: 18)),
                             Text("""Rules of the competition
Science models should belongs to any of the following category:
Recycle of waste management.
Non conventional enery.
Application of Electricity & Electronics concepts.
Robotics.
Competiotion will be held in two categories 
Category I : Class IX-X
Category II : Class XI-XII
Proposals will be scrutinize by the Techstorm committee and selected teams will be invited to participate in the competition.
Each team should present their model on the day of the event.The model can be of any form (working model or theoretical model or dummy model).
Competition will be held on April 07, 2020 between 10.30 AM to 5.30 PM
""",style: TextStyle(fontSize: 18)),
                             Text("""Participation
Soft copy of the report should be submitted via email to the following e-mail address sensanjuktasen@gmail.com,prb000047@gmail.com  with in April 02, 2020. 
""",style: TextStyle(fontSize: 18))
                             
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
                          subtitle: Column( children : [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Arka Banerjee",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width:20),
                               IconButton(icon: Icon(Icons.phone), 
                            onPressed:() {
                              launch('tel:${'8017077827'}');
                            },

      ),
                            ],
                          ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Sanjukta Sen",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width:20),
                               IconButton(icon: Icon(Icons.phone), 
                            onPressed:() {
                              launch('tel:${'8335957344'}');
                            },

      ),
                            ],
                          ),
                          ])),
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