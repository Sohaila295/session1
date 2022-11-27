import 'package:flutter/cupertino.dart';

class PageTitle extends StatelessWidget {

  String title;
  PageTitle({ required this.title});



  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: Container(

          padding:  EdgeInsets.symmetric(vertical: 12),

          color:  Color.fromRGBO(154, 45, 175, 1.0),
          child:  Text(
            title,
            textAlign: TextAlign.center,

            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1.0),
              fontSize: 24,
            ),
          )),
    );

  }


}