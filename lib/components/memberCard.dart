import 'package:flutter/material.dart';
class MemberCard extends StatelessWidget {
  const MemberCard({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.network('https://i.pravatar.cc/300',width: 50,height: 50,),
        ),
        const SizedBox(width: 25),
        SizedBox(child: Text(text,style: const TextStyle(color: Colors.pinkAccent),),),
      ],
    );

  }
}