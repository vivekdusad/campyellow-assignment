import 'package:flutter/material.dart';
class DiscussThread extends StatelessWidget {
  const DiscussThread({Key? key, required this.text1, required this.text2}) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(child: Text(text1,style: TextStyle(color: Colors.pinkAccent,
            fontSize: 16
            ),),),
            SizedBox(height: 5,),
            SizedBox(child: Text(text2,style: TextStyle(
              fontSize: 16,
              color: Colors.white
            ),),)
          ],


      )
      );


  }
}