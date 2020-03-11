import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/NFormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class PASSIONWITHREELS extends StatefulWidget {
  @override
  _PASSIONWITHREELSState createState() => _PASSIONWITHREELSState();
}

class _PASSIONWITHREELSState extends State<PASSIONWITHREELS> {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>NFormPage(eventType: 'Creativity', eventName: "PASSIONWITHREELS", minMembers: 5, maxMembers: 8,)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('Passion With Reels'),
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
                          "Passion With Reels",
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
                  'assets/images/CREATIVITY/pwr-min.jpg',
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
                          subtitle: Container(
                            width: c_width,
                            padding: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Text(
                                    "Filmmaking involves a number of discrete stages including an initial story, idea, or commission, through screenwriting, casting, shooting, sound recording and pre-production, editing, and screening the finished product before an audience that may result in a film release and exhibition. Filmmaking takes place in many places around the world in a range of economic, social, and political contexts, and using a variety of technologies and cinematic techniques.Filmmaking is not only an art but is also a perfect portrayal of the ever-changing life & rapid scientific & technological growth of mankind. Now, if you are passionate about it and have a team that has the potential to make a movie, then step up, participate in this wonderful event & show us your passion with reels!!!",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                
                              ],
                            ),
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
                                "Team registration: INR 250",
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
                                """1. Must be a short film with a story, runtime of film should not exceed 11 minutes(Including the beginning and end credits).  Participants must ensure that the titles and credits displayed do not last for more than 1 minute. Films exceeding this time limit are likely to be rejected.
2. Political biasness, Religional biasness, Pornographic content will not be entertained and would lead to direct disqualification. AVOID EXCESSIVE VIOLENCE. 
3. Movies should be in 720p(HD) minimum. FORMAT: The films may be shot in MPEG4 or AVI format. The recommended ratios are: 16:9 / 16:9 Full Height Anamorphic – in DV / HDV.
4. Films may be in any language or have no dialogue at all. Films in Language other than English should carry subtitles in English.
5. Due credits must be given to the cast and the crew in the film though the final prize would go to the team.
6. There is no particular theme for the short film.
7. Films once entered cannot be withdrawn.
8. The short film must be original(should not be copied from other sources) and no watermark of any kind should be on the film.
9.  ONLY Short Films should be submitted NO DOCUMENTARIES, ANIMATIONS OR EXPERIMENTAL ART FORMS. 
10. Submission of video should be done through CD, DVD or Pen drive.
11. Multiple entries of same team is not allowed.
12. Movies that were submitted last year in Techstorm would not be accepted.
13. Participants may or may not be from same college but submission of a copy of their college id card is compulsory. All participants must be college students(either UG or PG).
14. Each film should begin with a disclaimer, which should also include the title of the movie and TEAM NAME.
15. The maximum number of team members can be 8 (including the cast) and minimum number of team members can be 1.
16. Judges’ decision will be final and binding.
17. The last date of submitting the short film is 3rd April. (Participant can also email their film to the co-ordinator of the event.)
18. TECHSTORM 2.20 organizers reserve the right to change / modify / alter any rule or its part or event of this competition anytime.""",
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
                                "Abhishek Bharti",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width:20),
                               IconButton(icon: Icon(Icons.phone), 
                            onPressed:() {
                              launch('tel:${'7278456054'}');
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