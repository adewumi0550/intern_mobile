import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constraint/colors_string.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String textTitle;
  const SmallText({
    Key? key,
    this.color,
    required this.textTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      style: GoogleFonts.roboto(
        color: color ?? blackColor,
        fontSize: 14,
      ),
    );
  }
}
