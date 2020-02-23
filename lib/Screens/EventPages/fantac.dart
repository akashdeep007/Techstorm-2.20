import 'package:flutter/material.dart';

class fantac extends StatefulWidget {
  @override
  _fantacState createState() => _fantacState();
}

class _fantacState extends State<fantac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(),
              body: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      "Fanta-C",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          letterSpacing: 12),
                    ),
                  ),
                  Card(
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
                              "Rule1",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "rule2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Text(
                              "rule3",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        )),
                  ),
                  Divider(height: 20,),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    child: ListTile(
                        contentPadding: EdgeInsets.all(20),
                        title: Row(
                          children: <Widget>[
                            Icon(Icons.attach_money),
                            Center(
                              child: Text(
                                "Registration fees",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        subtitle: Column(
                          children: <Widget>[
                            Text(
                              "Rs 10",
                              style: TextStyle(fontSize: 18),
                            ),
                           
                          ],
                        )),
                  ),
                  Divider(height: 20,),
                  Card(
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
                              "Rule1",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "rule2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Text(
                              "rule3",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        )),
                  ),
                  Divider(height: 20,),
                  Card(
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
                        subtitle: Row(
                          children: <Widget>[
                            Text(
                              "Akashdeep Bhattacharya",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width:20),
                             IconButton(icon: Icon(Icons.phone), 
        onPressed:() {},

      ),
                          ],
                        )),
                  ),
                  Divider(height: 20,),
                  Card(
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
                        subtitle: Column(
                          children: <Widget>[
                            Text(
                              "1st prize : 5000",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "rule2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                            Text(
                              "rule3",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ],
                        )),
                  ),
                  Center(child: RaisedButton(onPressed: (){},child: Text("Register"),))
                ],
              ),
            );
  }
}
