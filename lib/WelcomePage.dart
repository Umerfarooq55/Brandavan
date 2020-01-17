import 'package:flutter/material.dart';
import 'package:flutter_app/SignupPage.dart';

import 'LoginPage.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

        return Scaffold(
          body: Home(),
        );
//
  }


}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  child: new Image.asset('assets/images/welcom_logo.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:80.0),
            child: ButtonTheme(
              height: 70,
              minWidth: 350,
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(32.0),
                    side: BorderSide(color: Color(0xFF0079D1))),
                color:Colors.white,
                textColor:Color(0xFF0079D1),
                padding: EdgeInsets.all(8.0),
                onPressed: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage())

                  );
                },
                child: Text(
                  "Sign UP".toUpperCase(),
                  style: TextStyle(
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: ButtonTheme(
              height: 70,
              minWidth: 350,
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(32.0),
                    side: BorderSide(color: Color(0xFF0079D1))),
                color:Color(0xFF0079D1),
                textColor:Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {


                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login())

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

        ],
      ),
    );
  }
}

