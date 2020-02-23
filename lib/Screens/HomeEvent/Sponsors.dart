import 'package:flutter/material.dart';

class SponsorsList extends StatefulWidget {
  @override
  _SponsorsListState createState() => _SponsorsListState();
}

class _SponsorsListState extends State<SponsorsList> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (var x = 0; x < 2; x++) {
      widgets.add(Container(
          height: 70.0,
          width: 70.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                new BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0))
              ],
              border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/ardent_logo.png")))));
                      widgets.add(Container(
          height: 70.0,
          width: 70.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                new BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0))
              ],
              border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/a.jpg")))));
                      widgets.add(Container(
          height: 70.0,
          width: 70.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                new BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0))
              ],
              border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/b.png")))));
                      widgets.add(Container(
          height: 70.0,
          width: 70.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                new BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0))
              ],
              border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:  AssetImage(
                      "assets/images/r.jpg")))));
                      widgets.add(Container(
          height: 70.0,
          width: 70.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                new BoxShadow(
                    color: Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 5.0,
                    offset: Offset(5.0, 5.0))
              ],
              border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image:  AssetImage(
                      "assets/images/g.jpg")))));
    }
    return Container(
        height: 80.0,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5.0),
            children: widgets));
  }
}
