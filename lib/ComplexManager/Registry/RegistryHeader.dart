import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/Complex/subcomplex.dart';

import '../SetupScreen.dart';

class RegistryHeader extends StatefulWidget {
  @override
  _RegistryHeaderState createState() => _RegistryHeaderState();
}

class _RegistryHeaderState extends State<RegistryHeader> {
  @override
  Widget build(BuildContext context) {
    return RegistryHeaderPage();
  }
}

class RegistryHeaderPage extends StatefulWidget {
  @override
  _RegistryHeaderPageState createState() => _RegistryHeaderPageState();
}

class _RegistryHeaderPageState extends State<RegistryHeaderPage> {
  int clickCard = 0;
  String heading = "RegistryHeader Details";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
              child: new Column(

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:32.0),
                    child: SubHeadingCardsHeader(),
                  ),
                  Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueAccent,
                        ),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                borderRadius: BorderRadius.circular(25.0)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 32.0),
                                borderRadius: BorderRadius.circular(25.0)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SubHeadingCards(),

//                        SubHeadingCards(),
//                        Text("Third Floor",
//                          style: TextStyle(
//                              fontSize: 30,
//                              color: Colors.grey
//                          ),),
                      ],

                    ),
                  )
                ],

              )),
        ],

      ),
    );
  }

  List<String> SubHeading = []
    ..add("Pending Request")
    ..add("Current Residents")
  ;

  Widget SubHeadingCards() {
    return Container(
        height: 400.0,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: SubHeading.length,
          itemBuilder: (BuildContext context, int i) => GestureDetector(
            onTap: () {
//
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 110,

                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage:
                        AssetImage("assets/images/staff.jpg"),
                        backgroundColor: Colors.transparent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "John Doe",
                              style:
                              TextStyle(fontSize: 22, color: Colors.black),
                            ),
                            new Text(
                              "Lxe-1231",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey),
                            ),
                            new Text(
                              "Lxe-1231",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[

                            Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: new Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: new BoxDecoration(

                                  shape: BoxShape.circle,
                                    border: Border.all(color: Colors.red)
                                ),
                                child: new Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Column _TextFieldWidgt(String name, String hintText) {
    return new Column(
      children: <Widget>[
        new Text(
          name,
          style: TextStyle(fontSize: 25, color: Color(0xFF0079D1)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2, right: 30),
          child: TextField(
            style: TextStyle(fontSize: 16, color: Color(0xFF0079D1)),
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
  Widget SubHeadingCardsHeader(){
    return Container(
        height: 50.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: SubHeading.length,
          itemBuilder: (BuildContext context, int i) =>
              GestureDetector(
                onTap: (){
//
                  setState(() {
                    clickCard=i;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    color: clickCard==i?Colors.blue:Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                        ,
                        side: BorderSide(color: Colors.blue, width: 1)
                    ),
                    elevation: 10,
                    child: Container(
                      width:220,
                      child: Column(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Center(
                              child: Text(SubHeading[i],
                                style: TextStyle(
                                    fontSize: 15,
                                    color: clickCard==i?Colors.white:Colors.blue
                                ),),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
        )
    );
  }
}

