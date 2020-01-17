import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/Complex/subcomplex.dart';
import 'package:flutter_app/ComplexManager/Shift/ShiftPlan.dart';

import '../SetupScreen.dart';
import 'MyInfoShiftPlan.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return MyInfoPage();
  }
}

class MyInfoPage extends StatefulWidget {
  @override
  _MyInfoPageState createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  int clickCard = 0;
  String heading = "MyInfo Details";

  var SelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
              child: new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 32.0),
                child: SubHeadingCardsHeader(),
              ),
              SelectedPage()
            ],
          )),
        ],
      ),
    );
  }

  List<String> SubHeading = []..add("My Profile")..add("Current Residents");

  Widget SelectedPage() {
    switch (SelectIndex) {
      case 0:
      return  MyProfile();
        break;
      case 1:
      return  MyShift();
        break;
    }
  }

  Widget MyShift() {
    return MyInfoShiftPlanPage();
  }

  Column MyProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 28, top: 38.0),
          child: _TextFieldWidgt("Name"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 28, top: 38.0),
          child: _TextFieldWidgt("Email address"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 28, top: 38.0),
          child: _TextFieldWidgt("Contact Number"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 28, top: 38.0),
          child: _TextFieldWidgt("Address"),
        )
      ],
    );
  }

  Column _TextFieldWidgt(String hintText) {
    return new Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 2, right: 30),
          child: TextField(
            style: TextStyle(fontSize: 22, color: Color(0xFF0079D1)),
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

  Widget SubHeadingCardsHeader() {
    return Container(
        height: 50.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: SubHeading.length,
          itemBuilder: (BuildContext context, int i) => GestureDetector(
            onTap: () {
//
              setState(() {
                clickCard = i;
                SelectIndex = i;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                color: clickCard == i ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue, width: 1)),
                elevation: 10,
                child: Container(
                  width: 180,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Text(
                            SubHeading[i],
                            style: TextStyle(
                                fontSize: 15,
                                color: clickCard == i
                                    ? Colors.white
                                    : Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
