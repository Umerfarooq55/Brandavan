import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../SetupScreen.dart';

class ComunicatePage extends StatefulWidget {
  @override
  _ComunicatePageState createState() => _ComunicatePageState();
}

class _ComunicatePageState extends State<ComunicatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // action button

      body: ComunicatePagePage(),
    );
  }
}

class ComunicatePagePage extends StatefulWidget {
  @override
  _ComunicatePagePageState createState() => _ComunicatePagePageState();
}

class _ComunicatePagePageState extends State<ComunicatePagePage> {
  String heading = "ComunicatePage Details";
  List<String> Icons = ["assets/images/sos.png",
    "assets/images/visitor.png",
    "assets/images/taxi.png",
    "assets/images/delivery.png",
    "assets/images/gatepass.png",
    "assets/images/help.png",

  ];
  List<String> listTitle = ['title1','title2','title3','title4''title1','title2','title3','title4',];

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.only(left:2,top:38.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:38.0),
              child: Text("Request Service",
              style: TextStyle(
                fontSize: 35,
                color: Colors.blue,

              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left:38.0),
              child: Text("Select any comunicute from the below",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,

                  )),
            ),
            gridHeader()
          ],
        ),
      ),

    );
  }
  Widget gridHeader(){

      return  Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Container(
          height: 470,
            child: GridView.builder(

             shrinkWrap: true,

              itemCount: Icons.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1,),
              itemBuilder: (contxt, indx){
                return Container(
                  child: Card(

                    elevation: 10,
                    margin: EdgeInsets.all(16.0),
                    color: Colors.white,

                child:
                Center(
                  child: Image.asset(Icons[indx],
                  fit: BoxFit.cover,

                          ),
                ),
                  ),
                );

              },
            ),

        ),
      );


  }
}

