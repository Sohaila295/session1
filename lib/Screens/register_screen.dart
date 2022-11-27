import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session1/Screens/login_screen.dart';

class Register extends StatelessWidget {
  static String routename ="Register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child:
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child:Text("Back to login") ,)


        ,
      ),
    );
  }
}
