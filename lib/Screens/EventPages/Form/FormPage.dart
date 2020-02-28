import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/TeamFormPage.dart';

class RegisterForm extends StatefulWidget {
  final bool team;
  final String eventName;
  final int teamMembers;
  RegisterForm({this.eventName, this.team, this.teamMembers});
  
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String name = '';
  String department = '';
  String year = '';
  String college = '';
  String contact = '';
  

  @override
  Widget build(BuildContext context) {
    print(widget.eventName);
     return widget.team == false ?  Scaffold(
      extendBody: false,
      floatingActionButton: FloatingActionButton.extended(onPressed: () {}, label: Container(child: Center(child : Text('Register')))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor : Colors.black87,
        title : Text('Register'),
      ),
      body: SingleChildScrollView(
              child: Card(
                child: Form(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(widget.eventName, style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Name'
                          ),
                          onChanged: (text) {
                            name = text;
                          },
                        ),
                        SizedBox(height: 20,),
                                                  TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email'
                          ),
                          onChanged: (text) {
                            name = text;
                          },
                        ),
                            SizedBox(height: 20,),                      
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Contact Number'
                          ),
                          onChanged: (text) {
                            name = text;
                          },
                        ),
                        SizedBox(height: 20,),
                        DropDownFormField(
                    titleText: 'Department',
                    hintText: 'Please choose one',
                    value: department,
                    onSaved: (value) {
                      setState(() {
                        department= value;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        department = value;
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
                    titleText: 'Year',
                    hintText: 'Please choose one',
                    value: year,
                    onSaved: (value) {
                      setState(() {
                        department = value;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        year = value;
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
                SizedBox(height: 40,),
                                      TextFormField(
                          decoration: InputDecoration(
                            labelText: 'College'
                          ),
                          onChanged: (text) {
                            name = text;
                          },
                        ),
                        SizedBox(height: 40,),
                        widget.eventName == "COC" ? TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Contact Number'
                          ),
                          onChanged: (text) {
                            name = text;
                          },
                        ) : Container(),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    ) : TeamFormPage(eventName : widget.eventName, teamMembers: widget.teamMembers,);
  }
}