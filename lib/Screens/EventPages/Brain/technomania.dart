import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/FormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class Technomania extends StatefulWidget {
  @override
  _TechnomaniaState createState() => _TechnomaniaState();
}

class _TechnomaniaState extends State<Technomania> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () { 
      Navigator.push(context,new MaterialPageRoute(builder: (context) =>RegisterForm(eventName : 'Technomania',team: true, teamMembers: 2)));

      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('Technomania'),
                backgroundColor: Colors.black87,
              ),
              body: Container(
                                    decoration: BoxDecoration(
                      image : DecorationImage(
                        image : AssetImage('assets/images/BRAIN/TECHNOMANIA.jpg'), fit:BoxFit.cover
                      )
                    ),
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          "Technomania",
                          style: TextStyle(
                              fontSize: 48,fontFamily: "TempestApache",
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
                                "The Competition encourages students to extend their knowledge to a professional level in electrical and electronics circuit design. It also encourages them to nurture their creativity and innovation on applied engineering concepts.",
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
                              "Participation Norms",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                "1. Team Size: 2(Exact)\n2. Each Team will be provided with a Linux (Ubuntu) based System having supportable compilers in each round.\n3. The whole competition will be done through a web portal. So better you be familiar yourself with autojudge Codechef platform or any other autojudged webportal available.\n 4. Utilizing any kind of external electronic aid will lead to disqualification.\n 5. A group may comprise of members from different streams and/or different years and/or different colleges. If at least one member of a team is from a different college, the team will be treated as an outside team.\n6. No paper carried by the participants will be allowed during the whole contest.\n7. Team members cannot be changed after registration.\n",
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
                                "BPPIMT Teams: INR 100 ",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Other Teams: INR 120 ",
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
                                " 1. It should consist of hardware model on science and technology along with a powerpoint presentation.\n2. The members of a single team should be from the same institute.\n3. Each team must consist of 4 members.\n4. Each team must display their hardware model and have a presentation about their entire project.\n5. Each team will get 10 minutes for showing their hardware model and 10minutes to perform the presentation.\n6. Marks will be provided on boththemodel and presentation.\n7. The decision of the judges will be final.\n",
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
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Akashdeep Bhattacharya",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width:20),
                               IconButton(icon: Icon(Icons.phone), 
                            onPressed:() {
                              launch('tel:+${'9051633040'}');
                            },

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
                                "1st prize : 5000",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "2nd prize : 2000",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "3rd prize : 1000",
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
