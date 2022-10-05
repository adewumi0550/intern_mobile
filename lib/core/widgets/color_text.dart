import 'package:flutter/material.dart';

import '../constraint/colors_string.dart';

class ColorText extends StatelessWidget {
  final Color? color;
  final String textTitle;
  const ColorText({Key? key, this.color, required this.textTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        textTitle,
        style: TextStyle(
            color: color ?? primaryColor, fontSize: 18, fontFamily: 'Roboto'),
      ),
    );
  }
}
