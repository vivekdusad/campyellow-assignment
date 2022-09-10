import 'package:flutter/material.dart';
class ClanActivities extends StatelessWidget {
  const ClanActivities({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height:250,
            width: 250,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/img5.jpg"),
            opacity: 0.7)),
            child: Center(
              child: Text(
                text,style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
        );


  }
}