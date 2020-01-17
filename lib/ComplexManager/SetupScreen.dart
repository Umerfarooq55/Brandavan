import 'dart:ffi';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ComplexManager/Complex/ComplexDetails.dart';
import 'package:flutter_app/ComplexManager/Complex/ComplexMangerScreen.dart';
import 'package:flutter_app/ComplexManager/GardenSqare/GardenSqaure.dart';
import 'package:flutter_app/ComplexManager/Resident/ResidentDetail.dart';
import 'package:flutter_app/ComplexManager/Shift/ShiftPlan.dart';
import 'package:flutter_app/ComplexManager/Shift/ShiftPlanEdit.dart';
import 'package:flutter_app/ComplexManager/Tenat/Tenat.dart';

import 'package:flutter_app/WelcomePage.dart';

import 'Building/Building.dart';

class SetupScreen extends StatefulWidget {
    String selection;
    String title="";
  SetupScreen(String selection, String title){
    this.title=title;

    this.selection=selection;
  }

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  int _selectedIndex = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(

        height: 70,
        color: Colors.blue,
        child:BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/home.png"),
                color: Color(0xFF3A5A98),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/mypurchase.png"),
                color: Color(0xFF3A5A98),
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/eyescanner.png"),
                color: Color(0xFF3A5A98),
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,
             color: Color(0xFF888888),),

              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/miniprofile.png"),
                color: Color(0xFF3A5A98),
              ),
              title: Text(""),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
      appBar: AppBar(

        leading: GestureDetector(
          onTap: (){

            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SetupScreen("SelectRule","Setup"))

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
            child:  Text(widget.title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),),
          ),
        ),
      ),
      // action button

      body: SubBody(),
    );
  }

  Widget SubBody(){

    switch(widget.selection) {

        case "ComplexManager":
        return ComplexManagerScreen();
        break;

        case "SelectRule":
        return SelectRole();
        break;


      case "ComplexManagerDetails":
        return ComplexDetails();
        break;

      case "Buildingdetails":
        return Building();
        break;

      case "ResidentDetail":
        return ResidentDetail();
        break;

      case "gardensqaure":
        if(widget.title=="Complex Manager"){
//          return GardenSqaure(true);
          return ComplexdetailPage();
        }else{
          return GardenSqaure(false);
        }

        break;

      case "tenat":
        return Tenant();
      case "shiftplanedit":
        return ShiftPlanEdit();
      case "shiftstaff":
        return ShiftPlan();
        break;
    }

  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String getTitle() {

   return widget.title;
  }
}
class SelectRole extends StatefulWidget {
  @override
  _SelectRoleState createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {

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
              child: Text("Service Type",
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
              child: Text("Select a service type you want to register as",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0,left: 20),
            child: productsCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(left:25,top: 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Recent Service",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue,

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30.0,left: 30),
            child: _TextFieldWidgt("Garden Square","Complex Managar"),
          ),
          Padding(
            padding: const EdgeInsets.only(top:12.0,left: 30),
            child: _TextFieldWidgt("24 C,7th Square","Home Managar"),
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
                fontSize: 20,
                color: Color(0xFF0079D1)
            ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left:2,right: 30),
          child: TextField(
            style: TextStyle(
                fontSize: 16,
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
        ),
//        _bottomNormal()
      ],
    );
  }
  List<ServiceProvider> productData = []
    ..add(ServiceProvider('Discipline curl','https://sgdfgdgd/jdkjdhj.png/jashdghd'))
    ..add(ServiceProvider('Discipline curl','https://sgdfgdgd/jdkjdhj.png/jashdghd'))
    ..add(ServiceProvider('Discipline curl','https://sgdfgdgd/jdkjdhj.png/jashdghd'));

  Widget productsCard(){
    return Container(
        height: 200.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productData.length,
          itemBuilder: (BuildContext context, int i) =>
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SetupScreen("gardensqaure","Garden Sqaure"))

                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 10,
                    child: Container(
                      width: 165.0,
                      child: Column(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,top: 8.0),
                            child: Text("Complex Manager",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:11.0,top:8.0),
                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy "
                                "text ever since the 1500s,"
                            , style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey
                              ),),
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

class ServiceProvider {

  ServiceProvider(String a , String b);

}

