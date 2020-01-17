import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/Comunicate/ComunicatePage.dart';
import 'package:flutter_app/ComplexManager/GardenSqare/GardenSqaureSetup.dart';
import 'package:flutter_app/ComplexManager/Logs/Logs.dart';
import 'package:flutter_app/ComplexManager/MyInfo/MyInfo.dart';
import 'package:flutter_app/ComplexManager/MyServiceRequest/MyServiceRequest.dart';
import 'package:flutter_app/ComplexManager/Registry/RegistryHeader.dart';
import 'package:flutter_app/ComplexManager/Resident/ResidentDetail.dart';
import 'package:flutter_app/ComplexManager/Resident/ResidentHeader.dart';
import 'package:flutter_app/ComplexManager/ServiceRequest/ServiceRequest.dart';


import '../SetupScreen.dart';

class GardenSqaure extends StatefulWidget {
  bool complex;
  GardenSqaure(bool complex){
    this.complex=complex;

  }
  @override
  _GardenSqaureState createState() => _GardenSqaureState();
}

class _GardenSqaureState extends State<GardenSqaure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: GardenSqaurePage(widget.complex),
    );
  }
}

class GardenSqaurePage extends StatefulWidget {
  bool complexscreenn;
  GardenSqaurePage(bool complex){
    this.complexscreenn = complex;
  }

  @override
  _GardenSqaurePageState createState() => _GardenSqaurePageState();
}

class _GardenSqaurePageState extends State<GardenSqaurePage> {

  int clickCard=0;
  String heading = "GardenSqaure Details";

  var complex;

  @override
  Widget build(BuildContext context) {
    return Container(
     child: new  Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:20,top:20),
            child: MainHeadingCards(),
          ),
          clickOnSunHeading(),
        ],
      )
    );
  }
  List<String> MainHeading = []
    ..add("Setup")
    ..add("Registry")
    ..add("Resident Setup")
    ..add("Service Request")
    ..add("Comunicate")
    ..add("Logs")
    ..add("My Info")
    ..add("My Service Request");
  List<String> SubHeading = []
    ..add("Setup")
    ..add("Registry")
    ..add("Resident Setup")
    ..add("Service Request")
    ..add("Comunicate")
    ..add("Logs")
    ..add("My Info")
    ..add("My Service Request");
  Widget MainHeadingCards(){
    return Container(
        height: 60.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: MainHeading.length,
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
                      borderRadius: BorderRadius.circular(25.0)
                      ,
                      side: BorderSide(color: Colors.blue, width: 1)
                    ),
                    elevation: 5,
                    child: Container(
                   width: i==7?250:180,
                      child: Column(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Center(
                              child: Text(MainHeading[i],
                                style: TextStyle(
                                    fontSize: 23,
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

  Widget clickOnSunHeading(){
    switch(clickCard){
      case 0: return GardenSqaureSetupPage(widget.complexscreenn);
      case 1: return ResidentHeader();

      case 2: return RegistryHeaderPage();
      case 3: return ServiceRequestPage();
      case 4: return ComunicatePagePage();
      case 5: return LogsPage();
      case 6: return MyInfo();
      case 7: return MyServiceRequestPage();
      break;
      default:return Container();

    }

  }
//  Widget SubHeadingCards(){
//    return Container(
//        height: 60.0,
//        child: ListView.builder(
//          scrollDirection: Axis.horizontal,
//          itemCount: SubHeading.length,
//          itemBuilder: (BuildContext context, int i) =>
//              GestureDetector(
//                onTap: (){
////
//                  setState(() {
//                    clickCard=i;
//                  });
//                },
//                child: Padding(
//                  padding: const EdgeInsets.all(2.0),
//                  child: Card(
//                    color: clickCard==i?Colors.blue:Colors.white,
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(25.0)
//                        ,
//                        side: BorderSide(color: Colors.blue, width: 1)
//                    ),
//                    elevation: 10,
//                    child: Container(
//                      width: i==8?250:180,
//                      child: Column(
//
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.only(top: 10.0),
//                            child: Center(
//                              child: Text(SubHeading[i],
//                                style: TextStyle(
//                                    fontSize: 23,
//                                    color: clickCard==i?Colors.white:Colors.blue
//                                ),),
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//        )
//    );
//  }

}
