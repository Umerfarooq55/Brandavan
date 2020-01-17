import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../SetupScreen.dart';

class ResidentDetail extends StatefulWidget {
  @override
  _ResidentDetailState createState() => _ResidentDetailState();
}

class _ResidentDetailState extends State<ResidentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,


      // action button

      body: ResidentDetailPage(),
    );
  }
}

class ResidentDetailPage extends StatefulWidget {
  @override
  _ResidentDetailPageState createState() => _ResidentDetailPageState();
}

class _ResidentDetailPageState extends State<ResidentDetailPage> {
  bool optionOneSelected = true;
  bool optionTwoSelected = false;
  bool optionThreeSelected = false;
  double textSize = 10.04;
  String heading = "Resident Details";

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

  Column ResidentDetailInfo(BuildContext context) {
    return Column(
      children: <Widget>[


        Padding(
          padding: const EdgeInsets.only(left:18.0,top:30.0),
          child: _TextFieldWidgt("First Name"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:18.0),
          child: _TextFieldWidgt("Last Name"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18,top:18.0),
          child: _TextFieldWidgt("Email Address"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18,top:18.0),
          child: _TextFieldWidgt("Contact Number"),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18,top:18.0),
          child: _TextFieldWidgt("Category"),
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
  SingleChildScrollView UserInfo(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[


          Padding(
            padding: const EdgeInsets.only(left:18.0,top:20.0),
            child: _TextFieldWidgt("Registered as"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top:15.0),
            child: _TextFieldWidgt("Publish Contact"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18,top:15.0),
            child: _TextFieldWidgt("Select Complex"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18,top:15.0),
            child: _TextFieldWidgt("Select Unit"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18,top:15.0),
            child: _TextFieldWidgt("Start Date"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18,top:15.0),
            child: _TextFieldWidgt("End date"),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0,top:20.0),
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
                padding: const EdgeInsets.only(left:20.0,top:20.0),
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
                          MaterialPageRoute(builder: (context) => SetupScreen("tenat","Tenat"))

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
          padding: const EdgeInsets.only(top:15,left:90.0),
          child: Row(
            children: <Widget>[

              Text("Personal Info",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: isOneSelected()
                ),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:15,left:78.0),
          child: Row(
            children: <Widget>[

              Text("Details",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: isTwoSelected()
                ),)
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
              heading="Resident Details";
            });
          },
          child: Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(left: 100.0, top: 20.0),
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
          width: 100,
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
              heading="Resident Details";
            });
          },
          child: Container(
            child: Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 20, color: isTwoSelected()),
                )),
            height: 50,
            width: 50,
            margin: EdgeInsets.only(left: 3.0, top: 20.0),
            decoration: BoxDecoration(boxShadow: [
              new BoxShadow(
                color: isTwoSelected(),
                blurRadius: 10.0,
              ),
            ], color: Colors.white, shape: BoxShape.circle),
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

  ChooseDetails() {

    if (optionOneSelected) {
      return ResidentDetailInfo(context);
    }
    if (optionTwoSelected) {
      return UserInfo(context);
    }

  }

  Column AdditionalInfo(BuildContext context){


    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:38.0),
          child: _TextFielIcondWidgt("Complex Name",Icons.navigation),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18.0,top:18.0),
          child: _TextFielIcondWidgt("Address",Icons.navigation),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18,top:18.0),
          child: _TextFielIcondWidgt("Town",Icons.add),
        ),
        Padding(
          padding: const EdgeInsets.only(left:18,top:18.0),
          child: _TextFielSwitchWidgt("State"),
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
                    "Confirm".toUpperCase(),
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
    );
  }
}
