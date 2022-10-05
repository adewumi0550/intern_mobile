import 'package:flutter/material.dart';

import '../constraint/colors_string.dart';



class OutlineButton extends StatelessWidget {
  GestureTapCallback onTap;
  String textTitle;
  OutlineButton({Key? key, required this.onTap, required this.textTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:  Border.all(color: primaryColor)),
      child: MaterialButton(

          minWidth: double.infinity,
          height: 50.0,
          // color: primaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: onTap,
          child: Text(
            textTitle,
            style: const TextStyle(
                color: primaryColor, fontSize: 18.0, fontWeight: FontWeight.w700),
          )),
    );
  }
}
