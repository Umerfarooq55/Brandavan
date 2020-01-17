import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/Complex/ComplexDetails.dart';
import 'package:flutter_app/ComplexManager/Shift/ShiftPlan.dart';
import 'package:flutter_app/ComplexManager/Vehicle/VehicleList.dart';
import 'package:flutter_app/ComplexManager/Staff/staffList.dart';
import 'package:flutter_app/ComplexManager/Complex/subcomplex.dart';


import '../SetupScreen.dart';
import '../Building/SubBuildings.dart';

class GardenSqaureSetup extends StatefulWidget {
  bool complexscreenn;
  GardenSqaureSetup(bool complexscreenn){
    this.complexscreenn = complexscreenn;

  }

  @override
  _GardenSqaureSetupState createState() => _GardenSqaureSetupState();
}

class _GardenSqaureSetupState extends State<GardenSqaureSetup> {
  @override
  Widget build(BuildContext context) {
  return GardenSqaureSetupPage(true);
  }
}

class GardenSqaureSetupPage extends StatefulWidget {
  bool complexscreenn;
  GardenSqaureSetupPage(bool complexscreenn){
    this.complexscreenn=complexscreenn;


}

  @override
  _GardenSqaureSetupPageState createState() => _GardenSqaureSetupPageState();
}

class _GardenSqaureSetupPageState extends State<GardenSqaureSetupPage> {

  int clickCard=0;
  String heading = "GardenSqaureSetup Details";

   static bool complex=false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new  Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20,top:20),
              child: SubHeadingCards(),
            ),
            clickOnSunHeading()
          ],
        )
    );
  }

  List<String> SubHeading = []
    ..add("Complex")
    ..add("Buildings")
    ..add("Staff")
    ..add("Vehicle Reg")
    ..add("Shift Pan");


  Widget SubHeadingCards(){
    return Container(
        height: 50.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: SubHeading.length,
          itemBuilder: (BuildContext context, int i) =>
              GestureDetector(
                onTap: (){
//

                    if(i==4){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SetupScreen("shiftstaff","Shift Plan"))

                      );
                    }
                  setState(() {
                    clickCard=i;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(

                    color: clickCard==i?Colors.blue:Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                        ,

                    ),
                    elevation: 15,
                    child: Container(
                      width:110,
                      child: Column(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Center(
                              child: Text(SubHeading[i],
                                style: TextStyle(
                                    fontSize: 18,
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
  Widget clickOnSunHeading() {
    switch (clickCard) {
      case 0:
        if(widget.complexscreenn){
//          SubBuildings();
//          ComplexdetailPage();
        }else{
          return subComplex();
        }

        break;

      case 1:
        return SubBuildings();
        break;
      case 2:
        return staffList();
        break;
      case 3:
        return VehicleList();
        break;

        default:

          return Container();
    }
  }
}
