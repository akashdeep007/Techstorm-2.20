import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';


class TeamFormPage extends StatefulWidget {
  final String eventName;
  final int teamMembers;
  TeamFormPage({this.eventName, this.teamMembers});
  @override
  _TeamFormPageState createState() => _TeamFormPageState();
}

class _TeamFormPageState extends State<TeamFormPage> {
  int moreMembers = 1;
  String department = '';
  String year = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {}, label: Container(child: Center(child : Text('Register')))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                        child: Column(
                          children: <Widget>[
                            Center(child : Text(widget.eventName, style: TextStyle(fontSize : 36, fontWeight:FontWeight.bold),)),
                            TextFormField(
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
                          child: Form(
                            child: Column(
                              children : <Widget> [
                                Center(child : Text('Member' + (index+1).toString(), style: TextStyle(fontSize : 28, fontWeight : FontWeight.bold),)),
                                                        TextFormField(
                                decoration: InputDecoration(
                                  labelText : 'Name'
                                ),
                              ),
                                                      TextFormField(
                                decoration: InputDecoration(
                                  labelText : 'Contact Number'
                                ),
                              ),
                                                      TextFormField(
                                decoration: InputDecoration(
                                  labelText : 'College Name'
                                ),
                              ),                        SizedBox(height: 20,),
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
                              ]
                            ),
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: 100,),
              ],
            )
          ),
                ),
        );},)
      );
  }
}