import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/TeamFormPage.dart';
import 'package:techstorm/Screens/EventPages/Form/qr.dart';
import 'package:techstorm/Services/DatabaseService.dart';

class RegisterForm extends StatefulWidget {
  final bool team;
  final String eventName;
  final int teamMembers;
  final String eventType;
  RegisterForm({this.eventType, this.eventName, this.team, this.teamMembers});
  
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String error = '';
  String name = '';
  String department = '';
  String year = '';
  String college = '';
  String contact = '';
  String email = '';
  String townhall = '';
  DatabaseService database = DatabaseService();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print(widget.eventName);
     return widget.team == false ?  Scaffold(
      extendBody: false,
      appBar: AppBar(
        backgroundColor : Colors.black87,
        title : Text('Register'),
      ),
      body: SingleChildScrollView(
              child: Card(
                child: Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(widget.eventName, style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
                        TextFormField(
                          validator: (text) {
                            if(text.isEmpty){
                              return 'Enter Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Name'
                          ),
                          onChanged: (text) {
                            name = text;
                          },
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          validator: (text) {
                            if(text.isEmpty){
                              return 'Enter Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email'
                          ),
                          onChanged: (text) {
                            email = text;
                          },
                        ),
                            SizedBox(height: 20,),                      
                        TextFormField(
                          validator: (text) {
                            if(text.isEmpty){
                              return 'Enter Contact Number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Contact Number'
                          ),
                          onChanged: (text) {
                            contact = text;
                          },
                        ),
                        SizedBox(height: 20,),
                        DropDownFormField(                          
                        validator: (value) {
                            if(value == null){
                              return 'Select Department';
                            }
                            return null;
                          },
                    
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
                        validator: (value) {
                            if(value == null){
                              return 'Select Year';
                            }
                            return null;
                          },
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
                      validator: (text) {
                            if(text.isEmpty){
                              return 'Enter College';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'College'
                          ),
                          onChanged: (text) {
                            college = text;
                          },
                        ),
                        SizedBox(height: 40,),
                        widget.eventName == "COC" ? TextFormField(
                          validator: (text) {
                            if(text.isEmpty){
                              return 'Enter Townhall';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Town Hall'
                          ),
                          onChanged: (text) {
                            townhall = text;
                          },
                        ) : Container(),
                        Text(error, style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),),
                        FlatButton(
                          onPressed: () {
                          if(_formKey.currentState.validate()){
                            final result = database.registerUser(widget.eventType ,widget.eventName , email, contact, name, department, year, college);
                            result != null ?? Navigator.push(context,new MaterialPageRoute(builder: (context) =>QrGen(event: widget.eventName, college: college, contact: contact, department: department, name: name, year: year)));
                            print('Already Registered');
                            setState(() {
                              error = 'Already Registered';
                            });
                          }
                        },
                        child: Container(alignment: Alignment.center,height : 40, width: 200,color: Colors.red,  child:Container(alignment: Alignment.center,height : 40, width: 200,color: Colors.red,  child: Text('Register', style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold),),),),)
                      ],
                    ),
                  ),
                ),
        ),
      ),
    ) : TeamFormPage(eventType: widget.eventType , eventName : widget.eventName, teamMembers: widget.teamMembers,);
  }
}