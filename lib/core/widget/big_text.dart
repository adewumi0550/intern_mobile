import 'package:flutter/material.dart';
import 'package:internship/core/widget/color_string.dart';

class BigText extends StatelessWidget {
  const BigText({Key? key, required this.title,  this.textColor=secondaryColor}) : super(key: key);
final String title;
final Color textColor;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: textColor),
      ),
    );
  }
}


//Statuful
//Statless
