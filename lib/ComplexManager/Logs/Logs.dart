import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../SetupScreen.dart';

class Logs extends StatefulWidget {
  @override
  _LogsState createState() => _LogsState();
}

class _LogsState extends State<Logs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // action button

      body: LogsPage(),
    );
  }
}

class LogsPage extends StatefulWidget {
  @override
  _LogsPageState createState() => _LogsPageState();
}

class _LogsPageState extends State<LogsPage> {
  String heading = "Logs Details";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:40,left:28.0),
            child: _TextFielIcondWidgt("Select Month/Year",Icons.navigation),
          ),
          Padding(
            padding: const EdgeInsets.only(top:40,left:28.0),
            child: _TextFielIcondWidgt("Purpose",Icons.navigation),
          ),
//          CurrentShift(),
          Padding(
            padding: const EdgeInsets.only(left:5,top:50.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                  //color: const Color(0xFF66BB6A),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 25.0,
                    offset: Offset(-10.0, -10.0),
                  ),]
              ),
              child: Row(
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
            ),
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
Column _TextFielIcondWidgt(String hintText,IconData icon) {
  return new Column(
    children: <Widget>[

      Padding(
        padding: const EdgeInsets.only(left: 2, right: 30),
        child: TextField(
          style: TextStyle(fontSize: 20, color: Color(0xFF0079D1)),
          decoration: InputDecoration(
            labelText: hintText,
            suffixIcon: Icon(icon),
            contentPadding: const EdgeInsets.only(top: 10.0),
            border: UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xFF0079D1)),
            ),
          ),
        ),
      )
    ],
  );
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
      height: 200.0,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: productData.length,
          itemBuilder: (BuildContext context, int i) => Container(
              height: 180,
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
                          "7:00 AM",
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
                            DeliveryStatus("James Turner (Delivery)",context,20,Colors.blue),
                            Timings("Mark Smith \nBuilding 28",context,13,Colors.black)
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
Widget DeliveryStatus(String name,BuildContext context,double font, Color colorText){
  return     Padding(
    padding: const EdgeInsets.only(left:30,right:30,top:10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              color: colorText,
              fontSize: font,
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
              color: Colors.green,
                border: Border.all(color: Colors.green),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                    Radius.circular(15.0))),
            child: Center(child: Text("Done",style:
              TextStyle(
                color: Colors.white
              ),)),
          ),
        )
      ],
    ),
  );
}
Widget Timings(String name,BuildContext context,double font, Color colorText){
  return     Padding(
    padding: const EdgeInsets.only(left:30,right:30,top:10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
              color: colorText,
              fontSize: font,
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

                border: Border.all(color: Colors.green),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                    Radius.circular(15.0))),
            child: Center(child: Text("6:15 Pm",style:
            TextStyle(
                color: Colors.green
            ),)),
          ),

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

                border: Border.all(color: Colors.red),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                    Radius.circular(15.0))),
            child: Center(child: Text("7:15 am",style:
            TextStyle(
                color: Colors.red
            ),)),
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
