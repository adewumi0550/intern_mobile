import 'package:flutter/material.dart';

import '../constraint/colors_string.dart';


class BigText extends StatelessWidget {
  final Color? color;
  final String textTitle;
  const BigText({Key? key, this.color, required this.textTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: TextStyle(
          color: color ?? blackColor,
          fontSize: 30,
          fontFamily: 'DMSans',
          fontWeight: FontWeight.w700),
    );
  }
}
