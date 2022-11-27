import 'package:flutter/material.dart';
import 'package:session1/main.dart';
class PageBox extends StatelessWidget {

 PageBoxData item;
 PageBox({
   required this.item
});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          color: Colors.black,
        child: Image.asset(
          item.imagepath,
        height: double.infinity,
        fit: BoxFit.fill,

        ),),
        Container(
            margin: EdgeInsets.all(12),//نزق الكلمة عشان متلزقش في الحواف
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            color: Color.fromRGBO(154, 45, 175, 0.58),
            child: Text(item.title,
              style: TextStyle(color: Colors.white, fontSize: 20),))
      ],

    );
  }
}
