import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/FormPage.dart';
import 'package:url_launcher/url_launcher.dart';
class MMLIVE extends StatefulWidget {
  @override
  _MMLIVEState createState() => _MMLIVEState();
}

class _MMLIVEState extends State<MMLIVE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {
        Navigator.push(context,new MaterialPageRoute(builder: (context) =>RegisterForm(eventType: 'Creativity', eventName: "35MMLIVE",)));
      }, label: Container(width : 100 ,child : Center(child: Text('Register', style: TextStyle(fontSize : 18),)))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text('35MM LIVE'),
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
                          "35MM LIVE",
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
                  'assets/images/CREATIVITY/35mm-min.jpg',
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
                                """Photography is an art of creating moving or still pictures by recording radiation on a sensitive medium. It is proved to be a beneficial medium for the purpose of capturing momentous moment of life.
Pictures speak a thousand words than mere sentence and that is all about "35 mm LIVE"..."""
,
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
                                  "Registration",
                                  style: TextStyle(
                                      fontSize: 24, fontWeight: FontWeight.w500),
                                ),
                              ),
                          subtitle: Column(
                            children: <Widget>[
                              Text(
                                """The registration fee is Rs. 100 per participant, who will be allowed to submit 4 photographs. However, per additional 2 photographs submitted an excess charge of Rs. 15 will be levied. However for BPPIMT students, registration fee is Rs. 50 per participant and maximum of 6 photos will be accepted.

The participants must bring their photographs (soft copy) and their required data in a CD/Pen drive and might be asked to show during the fest.

Every participant must produce his/her college Identity Card during registration or whenever asked for.

Mode of payment will be e-mailed to the participant after we receive the mail from the participant and a time will be given for them to submit the requisite money.
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
                              Text(
                                """Qualification Rules
Only individuals can participate. No group or team formation is allowed.
We have FOUR basic genres for the theme: "Emotion of the life"
The participant can submit photographs for any/all of the four genres.
Conceptual or Macro
Portraits and Expression
Nature or Landscape
Street Photography or action
All individual is allowed to submit a maximum of 6 photos with a maximum of two per genres.
The photographs should be original and unedited. Editing can be done only to improve the contrast, colour, brightness to bring the originality of the situation. No addition or removals of objects or any other editing procedures are allowed. Photoshop editing is strictly forbidden.
Participants will be disqualified if the above parameters are not obeyed.
Watermarks and names on the photos are not allowed.
The participants must abide by the specifications given below otherwise that would lead to negative marking.
The photos must be ATLEAST 5 Mega-Pixel and MAXIMUM 15 MB in size.
The format must be simple JPEG or JPG file. No other file formats will be accepted.
During submission, the participant must follow these simple steps:-
The file name of the photos should be name_collegename_genre_serial no. (For e.g. if the name is Puja Vasa and the college is BPPIMT and the genre is PORTRAIT, the respective file name should be PujaVasa_BPPIMT_Portrait_1)
In a separate notepad file, he/she must provide the following for every photo
Title to the photograph
File name
Location of shoot (LOCATION OF SHOOT MUST BE WITHIN WEST BENGAL)
Camera make & model, Lens, Aperture, Shutter speed and ISO
In the same note pad, Personal details should include: name, email-id and Mobile number to contact, in case of you are a winner!!
Participate is required to provide a scanned picture of the college Identity Card through the mail along with their submission in the same mail.
Submission has to be mailed to the email address participation.techstorm12@gmail.com latest by 25th September, 2012 within 5pm. Entries after this date will not be accepted.
The subject of the mail should be 35mm LIVE else the mails will not be accepted.
""",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                """Evaluation
Photographs must be the authentic and exclusive work of the author.
All the photos will be copyrighted and the participant will be the respectful and soulful owner of the photographs.
Photos will be judged on the following:
Composition (10 points)
Creativity and Title (8+2 points)
Technical quality (10 points)
Suitability (10 points)
Impact (10 points)
The Top 20 photos will be put up on display (5 from each genre)
THE DECISION OF THE JURY IS FINAL. No hooliganism/vandalism will be allowed or entertained regarding the jury's decision.
The winners in every genre will be selected by our esteemed panel of judges. Only the winning participants will be awarded. The top photos will be exhibited in our college campus. There will be a special category of award known as the VIEWER'S CHOICE AWARD.
""",
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
                                "Nivedita Saha",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width:20),
                               IconButton(icon: Icon(Icons.phone), 
                            onPressed:() {
                              launch('tel:${'8240579258'}');
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