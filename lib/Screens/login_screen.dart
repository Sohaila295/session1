import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  static String routename ="Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed:(){
                Navigator.pushReplacementNamed(context, "Home"); //عشان منرجعش لل login مرة تانية
                }
                , child: Text("Login")),
            ElevatedButton(
                onPressed:(){
                  Navigator.pushNamed(context, "Register");

                }
                , child: Text("Signup")),
          ],
        ),
      )
    );
  }
}
