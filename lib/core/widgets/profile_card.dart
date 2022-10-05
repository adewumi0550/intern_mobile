import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileCard extends StatelessWidget {
  GestureTapCallback onTap;
  final Color color;
  final String textTitle;
  final IconData icon;
   ProfileCard({
    Key? key,
    required this.icon,
     this.color= Colors.grey,
    required this.textTitle,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 70,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              title: Text(
                textTitle,
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              leading: Icon(icon, size: 30, color: color,),
              trailing: const Icon(FontAwesomeIcons.solidCircleRight),
            ),
          )),
    );

    //   Text(
    //   textTitle,
    //   style: GoogleFonts.roboto(
    //     color: color ?? blackColor,
    //     fontSize: 14,
    //   ),
    // );
  }
}
