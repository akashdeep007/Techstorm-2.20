import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class TeamFormPage extends StatefulWidget {
  final String eventName, eventType;
  final int teamMembers;
  TeamFormPage({this.eventType, this.eventName, this.teamMembers});
  @override
  _TeamFormPageState createState() => _TeamFormPageState();
}

class _TeamFormPageState extends State<TeamFormPage> {
  int moreMembers = 1;
  List<String> department = ['','','','','','','',''];
  List<String> name = ['','','','','','','',''];
  List<String> year = ['','','','','','','',''];
  List<String> contact = ['','','','','','','',''];
  List<String> email = ['','','','','','','',''];
  List<String> college = ['','','','','','','',''];
  String teamName = '';
    final _formKey = GlobalKey<FormState>();

  // void teamRegister(){
  //   print(contact);
  //   final database = FirebaseDatabase.instance.reference();
  //   for(int i = 0; i < widget.teamMembers; i++){
  //     print(i);
  //     database.child(widget.eventType + '/' + widget.eventName + '/' + teamName + '/' + contact[i]).set({
  //     'email' : email[i],
  //     'name' : name[i],
  //     'phone' : contact[i],
  //     'department' : department[i],
  //     'year' : year[i],
  //     'college' : college[i],
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      extendBody: true,
      // floatingActionButton: FloatingActionButton.extended(onPressed: () {}, label: Container(child: Center(child : Text('Register')))),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title : Text('Register'),
        backgroundColor: Colors.black87,
      ),
      body: LayoutBuilder(
              builder: (context, constraints) { return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight : constraints.maxHeight
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left : 10, right : 10, top : 20),
            child : Column(
              children: <Widget>[
                  Card(
                    child : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Center(child : Text(widget.eventName, style: TextStyle(fontSize : 36, fontWeight:FontWeight.bold),)),
                            TextFormField(
                              validator: (text){
                                if(text.isEmpty){
                                  return 'Enter Team Name';
                                }
                                return null;
                              },
                              onChanged: (text) {
                                teamName = text;
                              },
                              decoration: InputDecoration(
                                labelText : 'Team Name'
                              ),
                            ),
                            widget.teamMembers >= 4 ? DropDownFormField(
                  titleText: 'Team Members',
                  hintText: 'Please choose one',
                  value: moreMembers,
                  onSaved: (value) {
                    setState(() {
                      moreMembers= value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      moreMembers = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "1",
                      "value": 1,
                    },
                    {
                      "display": "2",
                      "value": 2,
                    },
                    {
                      "display": "3",
                      "value": 3,
                    },
                    {
                      "display": "4",
                      "value": 4,
                    },
                    {
                      "display": "5",
                      "value": 5,
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
              ) : Container(),
                          ],
                        ),
                      ),
                    )
                  ),
                  ListView.builder(physics: NeverScrollableScrollPhysics(),  shrinkWrap: true, itemCount: widget.teamMembers,itemBuilder: (context, index){
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children : <Widget> [
                              Center(child : Text('Member' + (index+1).toString(), style: TextStyle(fontSize : 28, fontWeight : FontWeight.bold),)),
                                                      TextFormField(

                          validator: (text) {
                          if(text.isEmpty){
                            return 'Enter Name';
                          }
                          return null;
                          },
                              decoration: InputDecoration(
                                labelText : 'Name'
                              ),
                              onChanged: (text) {
                                name[index] = text;
                              },
                            ),
                            TextFormField(
                          validator: (text) {
                          if(text.isEmpty){
                            return 'Enter Contact Number';
                          }
                          return null;
                          },
                              decoration: InputDecoration(
                                labelText : 'Contact Number'
                              ),
                              onChanged: (text) {
                                contact[index] = text;
                                print(contact[index] + index.toString());
                              },
                            ),
                            TextFormField(
                          validator: (text) {
                          if(text.isEmpty){
                            return 'Enter Email';
                          }
                          return null;
                          },
                              decoration: InputDecoration(
                                labelText : 'Email'
                              ),
                              onChanged: (text) {
                                email[index] = text;
                              },
                            ),
                            TextFormField(
                          validator: (text) {
                          if(text.isEmpty){
                            return 'Enter College Name';
                          }
                          return null;
                          },
                              onChanged: (text) {
                                college[index] = text;
                              },
                              decoration: InputDecoration(
                                labelText : 'College Name'
                              ),
                            ),                        SizedBox(height: 20,),
                        DropDownFormField(
                          validator: (value){
                          if (value==null){
                            return 'Enter your Department';
                          }
                          },
                    titleText: 'Department',
                    hintText: 'Please choose one',
                    value: department[index],
                    onSaved: (value) {
                      setState(() {
                        department[index]= value;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        department[index] = value;
                      });
                    },
                    dataSource: [
                      {
                        "display": "IT",
                        "value": "IT",
                      },
                      {
                        "display": "CSE",
                        "value": "CSE",
                      },
                      {
                        "display": "ECE",
                        "value": "ECE",
                      },
                      {
                        "display": "EE",
                        "value": "EE",
                      },
                      {
                        "display": "MCA",
                        "value": "MCA",
                      },
                      {
                        "display": "BCA",
                        "value": "BCA",
                      },
                    ],
                    textField: 'display',
                    valueField: 'value',
                ),

                        SizedBox(height: 20,),
                        DropDownFormField(
                          validator: (value){
                          if (value==null){
                            return 'Enter your Year';
                          }
                          },
                    titleText: 'Year',
                    hintText: 'Please choose one',
                    value: year[index],
                    onSaved: (value) {
                      setState(() {
                        year[index] = value;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        year[index] = value;
                      });
                    },
                    dataSource: [
                      {
                        "display": "1st Year",
                        "value": "1st Year",
                      },
                      {
                        "display": "2nd Year",
                        "value": "2nd Year",
                      },
                      {
                        "display": "3rd Year",
                        "value": "3rd Year",
                      },
                      {
                        "display": "4th Year",
                        "value": "4th Year",
                      },
                    ],
                    textField: 'display',
                    valueField: 'value',
                ),
                            ]
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: 20,),
                    FlatButton(onPressed: () {
                      print(widget.eventName);
                      print(widget.eventType);
                      print(teamName);
                      print(contact);
                      if(_formKey.currentState.validate()){
                        final database = FirebaseDatabase.instance.reference();
                          for(int i = 0; i < widget.teamMembers; i++){
                            print(widget.eventType + '/' + widget.eventName + '/' + teamName + '/' + contact[i]);
                            database.child(widget.eventType + '/' + widget.eventName + '/' + teamName + '/' + contact[i]).set({
                            'email' : email[i],
                            'name' : name[i],
                            'phone' : contact[i],
                            'department' : department[i],
                            'year' : year[i],
                            'college' : college[i],
                            });
                          }
                      }
                    }, child: Text('Register')),
                    // InkWell(
                    //   onTap: () {
                    //     teamRegister();
                    //   },
                    //     child: Container(
                    //       alignment: Alignment.center,
                    //     width: double.infinity,
                    //     height: 50,
                    //     color: Colors.amber,
                    //     child: Text(
                    //       'Register', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,letterSpacing: 1
                    //     ),),
                    //   ),
                    // ),
                    SizedBox(height: 20,),
              ],
            )
          ),
                ),
        );},)
      );
  }
}