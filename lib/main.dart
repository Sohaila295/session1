import 'package:flutter/material.dart';
import 'package:session1/Screens/caluculator_screen.dart';
import 'package:session1/Screens/home_screen.dart';
import 'package:session1/Screens/login_screen.dart';
import 'package:session1/Screens/register_screen.dart';
import 'package:session1/page_box.dart';
import 'package:session1/page_title.dart';




void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "this is my first app",
    routes: {
      HomeScreen.routename:(_)=> HomeScreen(),
      LoginScreen.routename:(_)=>LoginScreen(),
      Register.routename:(_)=>Register(),
      CalculatorScreen.routename:(_)=>CalculatorScreen()


    },
    initialRoute: CalculatorScreen.routename

  ));
}




  // This widget is the root of your application.



class PageBoxData{
  String imagepath;
  String title;
  PageBoxData({

    required this.imagepath,
    required this.title

});
}
