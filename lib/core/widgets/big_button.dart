import 'package:flutter/material.dart';

import '../constraint/colors_string.dart';


class BigButton extends StatelessWidget {
  GestureTapCallback onTap;
  String textTitle;
  BigButton({Key? key, required this.onTap, required this.textTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: double.infinity,
        height: 50.0,
        color: primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: onTap,
        child: Text(
          textTitle,
          style: const TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),
        ));
  }
}
