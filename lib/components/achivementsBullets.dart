import 'package:flutter/material.dart';
class AchievementsBullets extends StatelessWidget {
  const AchievementsBullets({Key? key,required this.text1,required this.text2}) : super(key: key);
 final String? text1;
 final String? text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(text1!,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.pinkAccent
          ),),

      SizedBox(width: 150,
        child: Text(text2!,style: const TextStyle(
                fontSize: 25,
                color: Colors.yellowAccent
            ),
          ),
      ),

      ],
    );
  }
}
