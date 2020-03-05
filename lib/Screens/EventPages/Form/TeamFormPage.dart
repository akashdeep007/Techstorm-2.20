import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:string_validator/string_validator.dart';
import 'package:techstorm/Screens/EventPages/Form/qr.dart';


class TeamFormPage extends StatefulWidget {
  final String eventName, eventType;
  final int minMembers, maxMembers;
  TeamFormPage({this.eventType, this.eventName, this.minMembers, this.maxMembers});
  @override
  _TeamFormPageState createState() => _TeamFormPageState();
}

class _TeamFormPageState extends State<TeamFormPage> {
  TextEditingController _membersNum;
  int numMembers = 1;
  _TeamFormPageState();
  String error = '';
  int moreMembers = 1;
  List<String> department = ['','','','','','','',''];
  List<String> name = ['','','','','','','',''];
  List<String> year = ['','','','','','','',''];
  List<String> contact = ['','','','','','','',''];
  List<String> email = ['','','','','','','',''];
  List<String> college = ['','','','','','','',''];
  String teamName = '';
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    if(widget.maxMembers == widget.minMembers){
    numMembers = widget.maxMembers;
    }
    if(widget.maxMembers == widget.minMembers){
      moreMembers = widget.maxMembers - 1;
    }
    else{
      moreMembers = widget.maxMembers - widget.minMembers;
    }
    print(moreMembers);
    return Scaffold(
      
      extendBody: true,
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
                            Center(child : Text(widget.eventName, style: TextStyle(fontSize : 32, fontWeight:FontWeight.bold),)),
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
                            widget.minMembers != widget.maxMembers ? TextFormField(
                              maxLength: 1,
                              controller: _membersNum,
                            keyboardType: TextInputType.number,

                          validator: (text) {
                          if(text.isEmpty){
                            
                            return 'Minimum : ${widget.minMembers} Maximum : ${widget.maxMembers}';
                          }
                          else if(!isNumeric(text)){                            
                            return 'Minimum : ${widget.minMembers} Maximum : ${widget.maxMembers}';
                          }
                          else if(int.parse(text) < widget.minMembers){
                            setState(() {
                              _membersNum.text = widget.minMembers.toString();
                              print('llll');
                            });
                            return 'Minimum : ${widget.minMembers} Maximum : ${widget.maxMembers}';
                            }
                          else if(int.parse(text) > widget.maxMembers){

                            return 'Minimum : ${widget.minMembers} Maximum : ${widget.maxMembers}';
                          }
                          return null;
                          },
                              onChanged: (text) {
                                setState(() {
                                  if(int.parse(text) > widget.maxMembers){
                                    numMembers = widget.maxMembers;
                                  }
                                  else if(int.parse(text) < widget.minMembers){
                                    numMembers = widget.minMembers;
                                  }
                                  else{
                                    numMembers = int.parse(text);
                                  }
                                  text = numMembers.toString();
                                  print("Changed Value $numMembers");
                                });
                                
                              },
                              decoration: InputDecoration(
                                labelText : 'Members',
                                hintText: 'Min ${widget.minMembers} and Max ${widget.maxMembers} Members',
                              ),                    
                            ) : Container(),
                            Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children : <Widget> [
                              Center(child : Text('Team Leader', style: TextStyle(fontSize : 28, fontWeight : FontWeight.bold),)),
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
                                name[0] = text;
                              },
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                          validator: (text) {
                          if(text.isEmpty){
                            return 'Enter Contact Number';
                          }
                          if(!isNumeric(text)){
                            return 'Enter Valid Phone Number';
                          }
                          if(text.length != 10){
                            return 'Enter Valid Phone Number';
                          }
                          return null;
                          },
                              decoration: InputDecoration(
                                labelText : 'Contact Number'
                              ),
                              onChanged: (text) {
                                contact[0] = text;
                              },
                            ),
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
                                labelText : 'Email'
                              ),
                              onChanged: (text) {
                                email[0] = text;
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
                                college[0] = text;
                              },
                              decoration: InputDecoration(
                                labelText : 'College Name'
                              ),
                            ),                   
                            TextFormField(
                          validator: (text) {
                          if(text.isEmpty){
                            return 'Enter Department';
                          }
                          return null;
                          },
                              onChanged: (text) {
                                department[0] = text;
                              },
                              decoration: InputDecoration(
                                labelText : 'Department'
                              ),
                            ),  

                        SizedBox(height: 20,),
                            ]
                          ),
                        ),
                      ),
                            
                          ],
                        ),
                      ),
                    )
                  ),
                  ListView.builder(physics: NeverScrollableScrollPhysics(),  shrinkWrap: true, itemCount: numMembers - 1,itemBuilder: (context, index){
                    print('MoreMembers : $numMembers');
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
                                name[index+1] = text;
                              },
                            ),
                      TextFormField(
                          validator: (text) {
                          if(text.isEmpty){
                            return 'Enter Department';
                          }
                          return null;
                          },
                              onChanged: (text) {
                                department[index+1] = text;
                              },
                              decoration: InputDecoration(
                                labelText : 'Department'
                              ),
                            ), 

                        SizedBox(height: 20,),
                            ]
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: 20,),
                     Text(error, style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),),
                    FlatButton(onPressed: ()  {
                      if(_formKey.currentState.validate()){
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
                                            });
                                            for(int i = 1; i < numMembers; i++){
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
                      ); }

                    }, child: Container(alignment: Alignment.center,height : 40, width: 200,color: Colors.red,  child:Container(alignment: Alignment.center,height : 40, width: 200,color: Colors.red,  child: Text('Register', style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold),),),),),
                    SizedBox(height: 20,),
              ],
            )
          ),
                ),
        );},)
      );
  }
}




                      // print(widget.eventName);
                      // print(widget.eventType);
                      // print(teamName);
                      // print(contact);
                      // if(_formKey.currentState.validate()){
                      //   final database = FirebaseDatabase.instance.reference();
                      //   String path = widget.eventType + '/' + widget.eventName + '/' + contact[0];
                      //     database.reference().child(path).once().then((DataSnapshot datasnapshot) async {
                      //       print(datasnapshot.value);
                      //       if(datasnapshot.value == null){
                      //         await database.child(widget.eventType + '/' + widget.eventName + '/' + contact[0]).set({
                      //           'a_teamName' : teamName,
                      //           'd_department' : department[0],
                      //           'f_phoneNo' : contact[0],
                      //           'b_leaderName' : name[0],
                      //           'e_email' : email[0],
                      //           'c_college' : college[0],
                      //           'payment' : 'false',
                      //         });
                      //         for(int i = 1; i < numMembers; i++){
                      //           await database.child(widget.eventType + '/' + widget.eventName + '/' +contact[0] + '/' + 'g_members' + '/' + (i-1).toString()).set({
                      //           'name' : name[i],
                      //           'department' : department[i],
                      //           });
                      //           String data = "${widget.eventType} ${widget.eventName} ${contact[0]}";
                      //                 showDialog(
                      //                 context: context,
                      //                 builder: (BuildContext context){
                      //                     return AlertDialog(
                      //                       title: Text("Confirm Registration"),
                      //                       content: Text("Press Confirm to Generate QR Code"),
                      //                       actions: <Widget>[
                      //                         RaisedButton(
                      //                           child: Text('Confirm'),
                      //                           onPressed: () => Navigator.push(context,new MaterialPageRoute(builder: (context) =>QrGen(widget.eventName, data))),
                      //                         ),
                      //                       ],
                      //                     );
                      //                 }
                      //               );                     
                      //           // Navigator.push(context,new MaterialPageRoute(builder: (context) =>QrGen(widget.eventName, data)));
                      //         }
                      //       } else {
                      //         setState(() {
                      //           error = 'Already Registered';  
                      //         });
                      //       }
                      //     });
                      // }





                //         DropDownFormField(
                //           validator: (value){
                //           if (value==null){
                //             return 'Enter your Department';
                //           }
                //           return null;
                //           },
                //     titleText: 'Department',
                //     hintText: 'Please choose one',
                //     value: department[0],
                //     onSaved: (value) {
                //       setState(() {
                //         department[0]= value;
                //       });
                //     },
                //     onChanged: (value) {
                //       setState(() {
                //         department[0] = value;
                //       });
                //     },
                    
                //     dataSource: [
                //       {
                //         "display": "IT",
                //         "value": "IT",
                //       },
                //       {
                //         "display": "CSE",
                //         "value": "CSE",
                //       },
                //       {
                //         "display": "ECE",
                //         "value": "ECE",
                //       },
                //       {
                //         "display": "EE",
                //         "value": "EE",
                //       },
                //       {
                //         "display": "MCA",
                //         "value": "MCA",
                //       },
                //       {
                //         "display": "BCA",
                //         "value": "BCA",
                //       },
                //     ],
                //     textField: 'display',
                //     valueField: 'value',
                // ),