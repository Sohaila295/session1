import 'package:flutter/material.dart';

import '../main.dart';
import '../page_box.dart';
import '../page_title.dart';

class HomeScreen extends StatelessWidget {
  static String routename ="Home";
  List<PageBoxData> items=[
    PageBoxData(imagepath: "assets/eye.jpg", title: "Eye"),
    PageBoxData(imagepath: "assets/flo.jpg", title: "flower"),
    PageBoxData(imagepath: "assets/eye.jpg", title: "Eye"),
    PageBoxData(imagepath: "assets/flo.jpg", title: "flower"),
    PageBoxData(imagepath: "assets/eye.jpg", title: "Eye"),
    PageBoxData(imagepath: "assets/flo.jpg", title: "flower"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageTitle( title:"news"),
              SizedBox(
                width: 4.0,
              ),
              PageTitle(title:"magazine"),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: items.length,

              itemBuilder:(context,index)
              =>PageBox(item: items[index]),//arrow function
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 4
              ),


            ),
          )



        ],
      ),
    );
  }
}
