import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/Complex/subcomplex.dart';

import '../SetupScreen.dart';

class VehicleList extends StatefulWidget {
  @override
  _VehicleListState createState() => _VehicleListState();
}

class _VehicleListState extends State<VehicleList> {
  @override
  Widget build(BuildContext context) {
    return VehicleListPage();
  }
}

class VehicleListPage extends StatefulWidget {
  @override
  _VehicleListPageState createState() => _VehicleListPageState();
}

class _VehicleListPageState extends State<VehicleListPage> {
  int clickCard = 0;
  String heading = "VehicleList Details";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blueAccent,
                  ),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                          borderRadius: BorderRadius.circular(25.0)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 32.0),
                          borderRadius: BorderRadius.circular(25.0)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: SubHeadingCards(),
            ),
          ],
        ));
  }

  List<String> SubHeading = []
    ..add("Complex")
    ..add("Buildings")
    ..add("Staff")
    ..add("Vehicle Reg")
    ..add("Shift Pan");

  Widget SubHeadingCards() {
    return Container(
        height: 300.0,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: SubHeading.length,
          itemBuilder: (BuildContext context, int i) => GestureDetector(
            onTap: () {
//
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 110,

                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage:
                        AssetImage("assets/images/car.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "John Doe",
                              style:
                              TextStyle(fontSize: 22, color: Colors.black),
                            ),
                            new Text(
                              "Lxe-1231",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            new Text(
                              "View Details",
                              style:
                              TextStyle(fontSize: 17, color: Colors.blue),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Column _TextFieldWidgt(String name, String hintText) {
    return new Column(
      children: <Widget>[
        new Text(
          name,
          style: TextStyle(fontSize: 25, color: Color(0xFF0079D1)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2, right: 30),
          child: TextField(
            style: TextStyle(fontSize: 16, color: Color(0xFF0079D1)),
            decoration: InputDecoration(
              labelText: hintText,
              contentPadding: const EdgeInsets.only(top: 10.0),
              border: UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xFF0079D1)),
              ),
            ),
          ),
        ),
//        _bottomNormal()
      ],
    );
  }
}
