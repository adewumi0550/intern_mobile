import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  String image;
  BackgroundImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/$image'),
        fit: BoxFit.fitWidth,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.darken),
      )),
    );
  }
}
