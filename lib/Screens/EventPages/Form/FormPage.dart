import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:techstorm/Screens/EventPages/Form/qr.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:string_validator/string_validator.dart';


class RegisterForm extends StatefulWidget {
  final String eventName;
  final String eventType;
  RegisterForm({this.eventType, this.eventName});
  
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
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print(widget.eventName);
     return Scaffold(
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
                            if(!isEmail(text)){
                              return 'Enter Valid Email';
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
                          keyboardType: TextInputType.number,
                          validator: (text) {
                            if(text.isEmpty){
                              return 'Enter Contact Number';
                            }
                            if(text.length != 10){
                              return 'Not Valid Phone Number';
                            }
                            if(!isNumeric(text)){
                              return 'Enter a Valid Phone Number';
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
                            final database = FirebaseDatabase.instance.reference();
                          setState(() {
                            error = '';
                          });
                          if(_formKey.currentState.validate()){
                            String path = widget.eventType + '/' + widget.eventName + '/' + contact;
                            database.reference().child(path).once().then((DataSnapshot dataSnapshot) {
                              print(dataSnapshot.value);
                              if (dataSnapshot.value == null){
                                database.child(widget.eventType + '/' + widget.eventName + '/' + contact).set({
                                  'a_teamName' : '',
                                  'e_email' : email,
                                  'b_leaderName' : name,
                                  'f_phoneNo' : contact,
                                  'd_department' : department,
                                  'c_college' : college,
                                  'payment' : 'false',
                                  'time' : DateTime.now().toString(),                           
                                });
                                    String data = "${widget.eventType} ${widget.eventName} $contact";
                                      showDialog(
                                      context: context,
                                      builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text("Confirm Registration"),
                                            content: Text("Press Confirm to Generate QR Code"),
                                            actions: <Widget>[
                                              RaisedButton(
                                                child: Text('Confirm'),
                                                onPressed: () => Navigator.push(context,new MaterialPageRoute(builder: (context) =>QrGen(widget.eventName, data))),
                                              ),
                                            ],
                                          );
                                      }
                                    );

                                // Navigator.push(context,new MaterialPageRoute(builder: (context) =>QrGen(widget.eventName, data)));
                              }
                              else {
                                setState(() => error = 'Already Registered');
                              }
                            });
                            
                          } else {
                            setState(() => error = '');
                          }
                        },
                        child: Container(alignment: Alignment.center,height : 40, width: 200,color: Colors.red,  child:Container(alignment: Alignment.center,height : 40, width: 200,color: Colors.red,  child: Text('Register', style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold),),),),)
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}