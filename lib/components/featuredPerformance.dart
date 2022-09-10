import 'package:flutter/material.dart';
class FeaturedPerformances extends StatelessWidget {
  const FeaturedPerformances({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height:120,
          width: 150,
          decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.pravatar.cc/150?img=12'))),),
        const SizedBox(width: 40,),
        SizedBox(width: 150,
          child: Text(text,style: const TextStyle(
          color: Colors.pinkAccent,
          fontSize: 18
        ),),)
      ],
    );
  }
}
