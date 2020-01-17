import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../SetupScreen.dart';

class ShiftPlanEdit extends StatefulWidget {
  @override
  _ShiftPlanEditState createState() => _ShiftPlanEditState();
}

class _ShiftPlanEditState extends State<ShiftPlanEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,


      // action button

      body: ShiftPlanEditPage(),
    );
  }
}

class ShiftPlanEditPage extends StatefulWidget {
  @override
  _ShiftPlanEditPageState createState() => _ShiftPlanEditPageState();
}

class _ShiftPlanEditPageState extends State<ShiftPlanEditPage> {
  bool optionOneSelected = true;
  bool optionTwoSelected = false;
  bool optionThreeSelected = false;
  bool optionfourSelected = false;
  double textSize = 10.04;
  String heading = "Shift Planning";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                heading,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          HeaderRow(),
          HeaderRowText(),
          ChooseDetails()

        ],
      ),
    );
  }

  Column ShiftPlanEditInfo(BuildContext context) {
    return Column(
      children: <Widget>[

        Row(

          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top:40.0,left: 20),
              child: Text("Add a ShiftPlanEdit",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.grey
                ),),
            ),

            Padding(
              padding: const EdgeInsets.only(top:20.0,left:130),
              child: Icon(
                Icons.minimize,
                size: 35,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40.0,left:10),
              child: Icon(

                Icons.add,
                size: 35,
                color: Colors.grey,
              ),
            )
          ],

        ),
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:30.0),
          child: _TextFieldWidgt("ShiftPlanEdit Name"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:18.0),
          child: _TextFieldWidgt("Latitude"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18,top:18.0),
          child: _TextFieldWidgt("Longitude"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18,top:18.0),
          child: _TextFieldWidgt("Attached Gate"),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20.0,top:60.0),
              child: ButtonTheme(
                height: 60,
                minWidth: 180,
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(32.0),
                      side: BorderSide(color: Color(0xFF0079D1))),
                  color:Colors.white,
                  textColor:Color(0xFF0079D1),
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {

                  },
                  child: Text(
                    "Save".toUpperCase(),
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,top:60.0),
              child: ButtonTheme(
                height: 60,
                minWidth: 180,
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(32.0),
                      side: BorderSide(color: Color(0xFFFFFFFF))),
                  color: Color(0xFF0079D1),
                  textColor:Color(0xFFFFFFFF),
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {


                  },
                  child: Text(
                    "Define Units".toUpperCase(),
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
  SingleChildScrollView UserInfo(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          Row(

            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top:20.0,left: 20),
                child: Text("Add a Unit",
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.grey
                  ),),
              ),

              Padding(
                padding: const EdgeInsets.only(top:20.0,left:140),
                child: Icon(
                  Icons.minimize,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40.0,left:10),
                child: Icon(

                  Icons.add,
                  size: 35,
                  color: Colors.grey,
                ),
              )
            ],

          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top:20.0),
            child: _TextFieldWidgt("Address"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top:15.0),
            child: _TextFieldWidgt("ShiftPlanEdit Name"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18,top:15.0),
            child: _TextFieldWidgt("Floor Number"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18,top:15.0),
            child: _TextFieldWidgt("Number Visitor Parking"),

          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0,top:60.0),
                child: ButtonTheme(
                  height: 60,
                  minWidth: 180,
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(32.0),
                        side: BorderSide(color: Color(0xFF0079D1))),
                    color:Colors.white,
                    textColor:Color(0xFF0079D1),
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
//
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => SignupPage())
//
//                      );
                    },
                    child: Text(
                      "Save".toUpperCase(),
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,top:60.0),
                child: ButtonTheme(
                  height: 60,
                  minWidth: 180,
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(32.0),
                        side: BorderSide(color: Color(0xFFFFFFFF))),
                    color: Color(0xFF0079D1),
                    textColor:Color(0xFFFFFFFF),
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SetupScreen("ResidentDetail","Resident"))

                      );

                    },
                    child: Text(
                      "Confirm".toUpperCase(),
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  Row HeaderRowText() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:15,left:42.0),
          child: Row(
            children: <Widget>[

              Text("Shift Info",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: isOneSelected()
                ),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:15,left:27.0),
          child: Row(
            children: <Widget>[

              SizedBox(

                child: Text("Shift Occurrence",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: isTwoSelected()
                  ),),
                width: 78,
              )

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:15,left:32.0),
          child: Row(
            children: <Widget>[

              SizedBox(

                child: Text("Break Time",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: isThreeSelected()
                  ),),
                width: 50,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:10,left:32.0),
          child: Row(
            children: <Widget>[

              SizedBox(
                child: Text("Assign Employee",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: isFourSelected()
                  ),),
                width: 70,
              )
            ],
          ),
        ),

      ],

    );
  }

  Row HeaderRow() {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              optionOneSelected = true;
              optionTwoSelected = false;
              optionThreeSelected = false;
              optionfourSelected = false;
              heading="Shift Planning";
            });
          },
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 50.0, top: 20.0),
            decoration: BoxDecoration(boxShadow: [
              new BoxShadow(
                color: isOneSelected(),
                blurRadius: 10.0,
              ),
            ], color: Colors.white, shape: BoxShape.circle),
            child: Center(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 20, color: isOneSelected()),
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 3.0, top: 20.0),
          height: 10,
          width: 50,
          decoration: BoxDecoration(boxShadow: [
            new BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5.0,
                offset: Offset(0.0, 1.95)),
          ], color: Colors.white, shape: BoxShape.rectangle),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              optionOneSelected = false;
              optionTwoSelected = true;
              optionThreeSelected = false;
              optionfourSelected = false;
              heading="Shift Planning";
            });
          },
          child: Container(
            child: Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 20, color: isTwoSelected()),
                )),
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 3.0, top: 20.0),
            decoration: BoxDecoration(boxShadow: [
              new BoxShadow(
                color: isTwoSelected(),
                blurRadius: 10.0,
              ),
            ], color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 3.0, top: 20.0),
          height: 10,
          width: 50,
          decoration: BoxDecoration(boxShadow: [
            new BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5.0,
                offset: Offset(0.0, 1.95)),
          ], color: Colors.white, shape: BoxShape.rectangle),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              optionOneSelected = false;
              optionTwoSelected = false;
              optionThreeSelected = true;
              optionfourSelected = false;
              heading="Shift Planning";
            });
          },
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 0.0, top: 20.0),
            decoration: BoxDecoration(boxShadow: [
              new BoxShadow(
                color: isThreeSelected(),
                blurRadius: 10.0,
              ),
            ], color: Colors.white, shape: BoxShape.circle),
            child: Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 20, color: isThreeSelected()),
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 3.0, top: 20.0),
          height: 10,
          width: 50,
          decoration: BoxDecoration(boxShadow: [
            new BoxShadow(
                color: Colors.blueGrey,
                blurRadius: 5.0,
                offset: Offset(0.0, 1.95)),
          ], color: Colors.white, shape: BoxShape.rectangle),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              optionOneSelected = false;
              optionTwoSelected = false;
              optionThreeSelected = false;
              optionfourSelected = true;
              heading="Shift Planning";
            });
          },
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(left: 0.0, top: 20.0),
            decoration: BoxDecoration(boxShadow: [
              new BoxShadow(
                color: isFourSelected(),
                blurRadius: 10.0,
              ),
            ], color: Colors.white, shape: BoxShape.circle),
            child: Center(
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 20, color: isFourSelected()),
                )),
          ),
        ),



      ],
    );
  }

  Column _TextFieldWidgt(String hintText) {
    return new Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.only(left: 2, right: 30),
          child: TextField(
            style: TextStyle(fontSize: 20, color: Color(0xFF0079D1)),
            decoration: InputDecoration(
              labelText: hintText,
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
  Column _TextFielSwitchWidgt(String hintText) {
    return new Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.only(left: 2, right: 30),
          child: TextField(
            style: TextStyle(fontSize: 20, color: Color(0xFF0079D1)),
            decoration: InputDecoration(

              labelText: hintText,

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

  isOneSelected() {
    if (optionOneSelected) {
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  isTwoSelected() {
    if (optionTwoSelected) {
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  isThreeSelected() {
    if (optionThreeSelected) {
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }
  isFourSelected() {
    if (optionfourSelected) {
      return Colors.blue;
    } else {
      return Colors.black;
    }
  }

  ChooseDetails() {

    if (optionOneSelected) {
      return ShiftInfo(context);
    }
    if (optionTwoSelected) {
      return UserInfo(context);
    }
    if (optionThreeSelected) {
      return BreakTime(context);
    }
    if (optionfourSelected) {
      return AssignEmployye(context);
    }

  }

  Column BreakTime(BuildContext context){


    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:38.0),
          child: _TextFielIcondWidgt("Start Time",Icons.timer),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:18.0),
          child: _TextFielIcondWidgt("End Time",Icons.timer),
        ),

        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20.0,top:60.0),
              child: ButtonTheme(
                height: 60,
                minWidth: 180,
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(32.0),
                      side: BorderSide(color: Color(0xFF0079D1))),
                  color:Colors.white,
                  textColor:Color(0xFF0079D1),
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
//
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => SignupPage())
//
//                      );
                  },
                  child: Text(
                    "Save".toUpperCase(),
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,top:60.0),
              child: ButtonTheme(
                height: 60,
                minWidth: 180,
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(32.0),
                      side: BorderSide(color: Color(0xFFFFFFFF))),
                  color: Color(0xFF0079D1),
                  textColor:Color(0xFFFFFFFF),
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SetupScreen("SelectRule","Setup"))

                    );

                  },
                  child: Text(
                    "Next".toUpperCase(),
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
  Column AssignEmployye(BuildContext context){


    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:38.0),
          child: _TextFielIcondWidgt("Add an Employee",Icons.add),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:38.0),
          child: _TextFielIcondWidgt("Select Employee",Icons.navigation),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:18.0),
          child: _TextFielIcondWidgt("Select Role",Icons.navigation),
        ),

        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20.0,top:60.0),
              child: ButtonTheme(
                height: 60,
                minWidth: 380,
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(32.0),
                      side: BorderSide(color: Color(0xFF0079D1))),
                  color:Colors.white,
                  textColor:Color(0xFF0079D1),
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
//
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => SignupPage())
//
//                      );
                  },
                  child: Text(
                    "Save".toUpperCase(),
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ),

          ],
        )
      ],
    );
  }
  Padding ShiftInfo(BuildContext context){


    return Padding(
      padding: const EdgeInsets.only(top:258.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0,top:60.0),
                child: ButtonTheme(
                  height: 60,
                  minWidth: 180,
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(32.0),
                        side: BorderSide(color: Color(0xFF0079D1))),
                    color:Colors.white,
                    textColor:Color(0xFF0079D1),
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
//
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => SignupPage())
//
//                      );
                    },
                    child: Text(
                      "Save".toUpperCase(),
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,top:60.0),
                child: ButtonTheme(
                  height: 60,
                  minWidth: 180,
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(32.0),
                        side: BorderSide(color: Color(0xFFFFFFFF))),
                    color: Color(0xFF0079D1),
                    textColor:Color(0xFFFFFFFF),
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SetupScreen("SelectRule","Setup"))

                      );

                    },
                    child: Text(
                      "Next".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
