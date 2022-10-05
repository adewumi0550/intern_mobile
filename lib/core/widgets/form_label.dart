import 'package:flutter/material.dart';

Widget labelForm(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 15),
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto'),
    ),
  );
}
