import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../SetupScreen.dart';

class ShiftPlan extends StatefulWidget {
  @override
  _ShiftPlanState createState() => _ShiftPlanState();
}

class _ShiftPlanState extends State<ShiftPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // action button

      body: ShiftPlanPage(),
    );
  }
}

class ShiftPlanPage extends StatefulWidget {
  @override
  _ShiftPlanPageState createState() => _ShiftPlanPageState();
}

class _ShiftPlanPageState extends State<ShiftPlanPage> {
  String heading = "ShiftPlan Details";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CurrentShift(),
          Row(
            children: <Widget>[
              DayAndDateClipColumn("2", "S", false),
              DayAndDateClipColumn("3", "M", true),
              DayAndDateClipColumn("4", "T", false),
              DayAndDateClipColumn("5", "W", false),
              DayAndDateClipColumn("6", "T", false),
              DayAndDateClipColumn("7", "F", false),
              DayAndDateClipColumn("8", "S", false)
            ],
          ),
          productsCard()
        ],
      ),
    );
  }

  ClipPath DayAndDateClipColumn(String date, String day, bool Selected) {
    return ClipPath(
        clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)))),
        child: Container(
            height: 140.0,
            width: 60.0,
            decoration: BoxDecoration(
                color: Selected ? Colors.blue : Colors.white,
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(0, 83, 79, 1), width: 0.0))),
            child: CurrentDayandDate(date, day, Selected)));
  }
}

Widget CurrentDayandDate(String date, String day, bool Selected) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Text(
          day,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Selected ? Colors.white : Colors.black),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Text(
          date,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Selected ? Colors.white : Colors.black),
        ),
      )
    ],
  );
}

List<ServiceProvider> productData = []
  ..add(ServiceProvider(
      'Discipline curl', 'https://sgdfgdgd/jdkjdhj.png/jashdghd'))
  ..add(ServiceProvider(
      'Discipline curl', 'https://sgdfgdgd/jdkjdhj.png/jashdghd'))
  ..add(ServiceProvider(
      'Discipline curl', 'https://sgdfgdgd/jdkjdhj.png/jashdghd'));

Widget productsCard() {
  return Container(
      height: 400.0,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: productData.length,
          itemBuilder: (BuildContext context, int i) => Container(
              height: 220,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: <Widget>[
                        ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)))),
                            child: Container(
                              color: Colors.blue,
                              width: 50,
                              height: 20,
                            )),
                        Text(
                          "7:00 AM - 10:00 AM",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                      height: 130,
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Column(
                          children: <Widget>[
                            SetTimeRow("James Turner",context),
                            SetTimeRow("Mark Smith",context)
                          ],
                        ),
                      ),
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.all(Radius.circular(35.0))),
                    ),
                  )
                ],
              ))));
}
 Widget SetTimeRow(String name,BuildContext context ){
  return     Padding(
    padding: const EdgeInsets.only(left:30,right:30,top:10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: (){

            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SetupScreen("shiftplanedit","Garden Sqaure"))

            );
          },
          child: Container(
            height: 30,
            width: 70,
            decoration: new BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0))),
            child: Center(child: Text("Edit")),
          ),
        )
      ],
    ),
  );
 }
Widget CurrentShift() {
  return Container(
    child: Center(
        child: Text(
      "September, 03 Monday",
      style: TextStyle(
          color: Colors.blue, fontSize: 35, fontWeight: FontWeight.bold),
    )),
    height: 120,
    decoration: new BoxDecoration(
      gradient: new LinearGradient(
          colors: [
            const Color(0xFFd3d3d3),
            const Color(0xFFFFFFFF),
          ],
          begin: const FractionalOffset(2.0, 1.0),
          end: const FractionalOffset(0.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.mirror),
    ),
  );
}
