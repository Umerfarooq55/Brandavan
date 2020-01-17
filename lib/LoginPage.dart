import 'dart:ffi';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/SetupScreen.dart';
import 'package:flutter_app/SignupPage.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
          padding: const EdgeInsets.only(top:90.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
                width: 250,
                child: new Image.asset('assets/images/welcom_logo.png')
            ),
          ),
        ),

          Padding(
            padding: const EdgeInsets.only(top:40.0,left: 30),
            child: _TextFieldWidgt("Email","Example@gmail.com"),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0,left: 30),
            child: _TextFieldWidgt("Password","********"),
          ),

          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Align(
                alignment: Alignment.topRight,
                child: Text("forgot password ?",style: TextStyle(

                  fontSize: 20,
                  color: Colors.black54
                ),)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:40.0),
            child: ButtonTheme(
              height: 70,
              minWidth: 350,
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
                  "Login".toUpperCase(),
                  style: TextStyle(
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:20,left:100.0),
              child: Row(
                children: <Widget>[

                  Text("Not a mamber yet? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage())

                      );
                    },
                    child: Text("Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue
                      ),
                    ),
                  ),

                ],

              ),
            ),
          )
        ],




      ),

    );
  }

  Column _TextFieldWidgt(String name , String hintText) {
    return new Column(
         children: <Widget>[

           Align(
             alignment:Alignment.topLeft,
             child: new Text(name,
               style: TextStyle(
                   fontSize: 25,
                   color: Color(0xFF0079D1)
               ),),
           ),
           Padding(
             padding: const EdgeInsets.only(left:2,right: 30),
             child: TextField(
               style: TextStyle(
                   fontSize: 20,
                   color: Color(0xFF0079D1)
               ),
               decoration: InputDecoration(
                 labelText: hintText,
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

