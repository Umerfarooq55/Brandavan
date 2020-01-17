import 'package:flutter/material.dart';
import 'package:flutter_app/WelcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor:  Colors.blue,
        accentColor:  Colors.blue
      ),
      home: WelcomeScreen(),
    );
  }
  ThemeData _buildDarkTheme() {
    final baseTheme = ThemeData();
    return baseTheme.copyWith(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[800],
        accentColor: Colors.grey[850]);
  }
}


