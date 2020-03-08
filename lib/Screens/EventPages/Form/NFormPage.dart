import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:techstorm/Screens/EventPages/Form/qr.dart';

class NFormPage extends StatefulWidget {
  final String eventName, eventType;
  final int minMembers, maxMembers;
  NFormPage({this.eventType, this.eventName, this.minMembers, this.maxMembers});


  @override
  _NFormPageState createState() => _NFormPageState();
}

class _NFormPageState extends State<NFormPage> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  String error = '';
  int members = 1;
  String teamName;
  List<String> department = ['','','','','','','',''];
  List<String> name = ['','','','','','','',''];
  List<String> contact = ['','','','','','','',''];
  List<String> email = ['','','','','','','',''];
  List<String> college = ['','','','','','','',''];
  @override
  Widget build(BuildContext context) {
    if(widget.minMembers == widget.maxMembers){
      members = widget.maxMembers;
    }
    return Scaffold(
      extendBody: false,
      appBar: AppBar(),
      body : SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.only(left : 10, right : 10, top: 20),
        child : Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(child: Text(widget.eventName, style: TextStyle(fontSize : 32, fontWeight: FontWeight.bold),),),
            FormBuilder(
              autovalidate: true,
              key: _fbKey,
              child: Column(
              children : <Widget> [
            FormBuilderTextField(
              attribute: "name",
              decoration: InputDecoration(labelText: "Team Name"),
              validators: [
                FormBuilderValidators.required(),
              ],
              onChanged: (text) {
                teamName = text;
              },
            ),
            widget.maxMembers != widget.minMembers ?
            FormBuilderSlider(
              onChanged: (text){
                setState(() {
                  members = text.round();
                  print(members);
                });
              },
              attribute: "slider",
              validators: [FormBuilderValidators.min(widget.minMembers)],
              min: widget.minMembers.toDouble(),
              max: widget.maxMembers.toDouble(),
              initialValue: widget.minMembers.toDouble(),
              divisions: widget.maxMembers - widget.minMembers,
              decoration:
                  InputDecoration(labelText: "Number of Members"),
            ) : Container(),
            Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
            children: <Widget>[
            Center(child: Text('Team Member', style : TextStyle(fontSize : 28)),),
            FormBuilderTextField(
                attribute: "name",
                decoration: InputDecoration(labelText: "Name"),
                validators: [
                  FormBuilderValidators.required(),
                ],
                onChanged: (text) {
                  name[0] = text;
                },
            ),          
            FormBuilderTextField(
                attribute: "name",
                decoration: InputDecoration(labelText: "Department"),
                validators: [
                  FormBuilderValidators.required(),
                ],
                onChanged: (text) {
                  department[0] = text;
                },
            ),
            FormBuilderTextField(
                attribute: "phone",
                decoration: InputDecoration(labelText: "Contact Number"),
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.numeric(),
                  FormBuilderValidators.maxLength(10),
                  FormBuilderValidators.minLength(10),
                ],
                onChanged: (text){
                  contact[0] = text;
                },
            ),  
            FormBuilderTextField(
              onChanged: (text){
                email[0] = text;
              },
                attribute: "email",
                decoration: InputDecoration(labelText: "Email"),
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),

                ],
                
            ),  
            FormBuilderTextField(
                attribute: "name",
                decoration: InputDecoration(labelText: "College"),
                validators: [
                  FormBuilderValidators.required(),
                ],
                onChanged: (text) {
                  college[0] = text;
                },
            ),   
                ],
            ),
              ),
            ),
            ListView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true, itemCount : members-1,itemBuilder: (context, index){
                return Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      children: <Widget>[
                        Center(child: Text("Member ${index+1}", style: TextStyle(fontSize:28),),),
                                  FormBuilderTextField(
              attribute: "name",
              decoration: InputDecoration(labelText: "Name"),
              validators: [
                FormBuilderValidators.required(),
              ],
              onChanged: (text){
                name[index+1] = text;
              },
            ),          FormBuilderTextField(
              attribute: "name",
              decoration: InputDecoration(labelText: "Department"),
              validators: [
                FormBuilderValidators.required(),
              ],
              onChanged: (text){
                department[index+1] = text;
              },
            ),
                      ],
                    ),
                ),
                );
              }),
            Text(error, style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),),
            RaisedButton(
              child: Container(margin:EdgeInsets.only(top:10),width: 200,child: Center(child: Text('Register', style: TextStyle(fontSize:24),))),
              onPressed: () {
                if(_fbKey.currentState.validate()){
                      showDialog(
                        context: context,
                        builder: (BuildContext context){
                            String msg = 'Press Confirm to Generate QR Code';
                            return AlertDialog(
                              title: Text("Confirm Registration"),
                              content: Text(msg),
                              actions: <Widget>[
                                RaisedButton(
                                  child: Text('Confirm'),
                                  onPressed: ()  {
                                    print(widget.eventName);
                                    print(widget.eventType);
                                    print(teamName);
                                    print(contact);
                                    
                                      final database = FirebaseDatabase.instance.reference();
                                      String path = widget.eventType + '/' + widget.eventName + '/' + contact[0];
                                      setState(() {
                                        msg = 'Generating';
                                      });
                                        database.reference().child(path).once().then((DataSnapshot datasnapshot) async {
                                          print(datasnapshot.value);
                                          if(datasnapshot.value == null){
                                              String data = "${widget.eventType} ${widget.eventName} ${contact[0]}";
                                              Navigator.push(context,new MaterialPageRoute(builder: (context) =>QrGen(widget.eventName, data)));   
                                            await database.child(widget.eventType + '/' + widget.eventName + '/' + contact[0]).set({
                                              'a_teamName' : teamName,
                                              'd_department' : department[0],
                                              'f_phoneNo' : contact[0],
                                              'b_leaderName' : name[0],
                                              'e_email' : email[0],
                                              'c_college' : college[0],
                                              'payment' : 'false',
                                              'time' : DateTime.now().toString(),
                                            });
                                            for(int i = 1; i < members; i++){
                                              database.child(widget.eventType + '/' + widget.eventName + '/' +contact[0] + '/' + 'g_members' + '/' + (i-1).toString()).set({
                                              'name' : name[i],
                                              'department' : department[i],
                                              });
                
                                              // Navigator.push(context,new MaterialPageRoute(builder: (context) =>QrGen(widget.eventName, data)));
                                            }
                                          } else {
                                            setState(() {
                                              error = 'Already Registered';
                                              Navigator.pop(context);  
                                            });
                                          }
                                        });
                                  }
                                ),
                              ],
                            );
                        }
                      );
                }
                else{
                  print('not ok');
                }
              },
            )
              ]
            ))
          ],
        )
    ),
      ));
  }
}