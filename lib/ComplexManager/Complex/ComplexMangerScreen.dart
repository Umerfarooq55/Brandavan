import 'dart:ffi';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/Complex/ComplexDetails.dart';
import 'package:flutter_app/LoginPage.dart';
import 'package:flutter_app/WelcomePage.dart';

import '../SetupScreen.dart';

class ComplexManagerScreen extends StatefulWidget {
  @override
  _ComplexManagerScreenState createState() => _ComplexManagerScreenState();
}

class _ComplexManagerScreenState extends State<ComplexManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  double textSize = 10.04;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:25,top: 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Register as",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue,

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25.0,top: 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Select what role you want to register as",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetupScreen("ComplexManagerDetails","Complex Manager"))

              );
            },
            child: ManagersRole("Manager of Complex","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy "
                "text ever since the 1500s,"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:13.0,right: 15.0,top: 20.0),
            child: Container(

                height: 0.5,
                color: Colors.black,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    ),
          ),
          ManagersRole("Owner of Unit","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy "
              "text ever since the 1500s,"),
          Padding(
            padding: const  EdgeInsets.only(left:13.0,right: 15.0,top: 30.0),
            child: Container(

              height: 0.5,
              color: Colors.black,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
          ),
          ManagersRole("Tenant of Unit","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy "
              "text ever since the 1500s,"),
          Padding(
            padding: const  EdgeInsets.only(left:13.0,right: 15.0,top: 30.0),
            child: Container(

              height: 0.5,
              color: Colors.black,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
          ),
        ],
      ),
    );
  }

  Column ManagersRole(String Heading , String subHeading) {
    return Column(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top:45.0,left: 20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(Heading,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:20.0,top:5.0),
            child: Text(subHeading,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45
              ),),
          )
        ],
        );
  }

  Column _TextFieldWidgt(String name , String hintText) {
    return new Column(
      children: <Widget>[

        Align(
          alignment:Alignment.topLeft,
          child: new Text(name,
            style: TextStyle(
                fontSize: 18,
                color: Color(0xFF0079D1)
            ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left:2,right: 30),
          child: TextField(
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFF0079D1)
            ),
            decoration: InputDecoration(
              labelText: hintText,

              contentPadding: const EdgeInsets.only(top:10.0),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color:Color(0xFF0079D1)),
              ),
            ),
          ),
        )
      ],
    );
  }
}

