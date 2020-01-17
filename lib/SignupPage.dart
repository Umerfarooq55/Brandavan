import 'dart:ffi';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/LoginPage.dart';
import 'package:flutter_app/WelcomePage.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(

       leading: GestureDetector(
         onTap: (){

           Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => WelcomeScreen())

           );
         },

         child: Icon(
           Icons.arrow_back,
           color: Colors.blue,
           size: 24.0,
           semanticLabel: 'Text to announce in accessibility modes',
         ),
       ),
       backgroundColor: Colors.white,
         title: Padding(
           padding: const EdgeInsets.only(right:50.0),
           child: Center(
             child: const Text('Signup',
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold,
               color: Colors.blue
             ),),
           ),
         ),
     ),
     // action button

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
              padding: const EdgeInsets.only(top:20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 150,
                    width: 150,
                    child: new Image.asset('assets/images/profile.png')),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:1.0,left: 30),
              child: _TextFieldWidgt("Name","Full Name"),
            ),

            Padding(
              padding: const EdgeInsets.only(top:5.0,left: 30),
              child: _TextFieldWidgt("Email","Example@gmail.com"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0,left: 30),
              child: _TextFieldWidgt("Contact Number","Molbile Number"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0,left: 30),
              child: _TextFieldWidgt("Password","********"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0,left: 30),
              child: _TextFieldWidgt("Confirm assword","********"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:35.0),
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
                  onPressed: () {},
                  child: Text(
                    "Signup".toUpperCase(),
                    style: TextStyle(
                      fontSize: 26.0,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:10,left:100.0),
                child: Row(
                  children: <Widget>[

                    Text("Already a member ? ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login())

                        );

                      },
                      child: Text("Login",
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

