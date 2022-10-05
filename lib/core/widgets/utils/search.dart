import 'package:flutter/material.dart';

import '../../constraint/colors_string.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Positioned(
        bottom: -45,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 30,
          padding: const EdgeInsets.only(left: 10, right: 30),
          decoration: const BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.list_alt_rounded,
                color: primaryColor,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: Color(0xFF9B9B9B),
              ),
              contentPadding: EdgeInsets.only(top: 15.0),
              hintText: 'Search for food',
              hintStyle: TextStyle(
                fontFamily: 'GT Waldheim Pro',
                color: Color(0xFF9B9B9B),
                fontSize: 14.0,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
