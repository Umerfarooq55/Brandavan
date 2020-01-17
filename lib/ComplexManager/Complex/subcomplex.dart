import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../SetupScreen.dart';

class subComplex extends StatefulWidget {
  @override
  _subComplexState createState() => _subComplexState();
}

class _subComplexState extends State<subComplex> {
  @override
  Widget build(BuildContext context) {
    return Container(
  child: Column(
    children: <Widget>[
      GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SetupScreen("gardensqaure","Complex Manager"))

          );
        },
        child: Padding(
          padding: const EdgeInsets.only(top:50.0,left: 30),
          child: _TextFieldWidgt("Complex Info","Edit complex basic by tapping here"),
        ),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SetupScreen("gardensqaure","Complex Manager"))

          );

        },
        child: Padding(
          padding: const EdgeInsets.only(top:25.0,left: 30),
          child: _TextFieldWidgt("Complex location","Edit complex location info by tapping here"),
        ),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SetupScreen("gardensqaure","Complex Manager"))

          );
        },
        child: Padding(
          padding: const EdgeInsets.only(top:25.0,left: 30),
          child: _TextFieldWidgt("Complex addtitional info","Edit complex  addtitional info by tapping here"),
        ),
      )
    ],
  ),
    );
  }
  Column _TextFieldWidgt(String name , String hintText) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          child: Text(hintText,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey
            ),
          ),
        ),
//        _bottomNormal()
      ],
    );
  }
}
