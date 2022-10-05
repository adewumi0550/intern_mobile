import 'package:flutter/material.dart';

import '../core/widget/bigButton.dart';
import '../core/widget/big_text.dart';

class TrendingClass extends StatefulWidget {
  const TrendingClass({Key? key}) : super(key: key);

  @override
  State<TrendingClass> createState() => _TrendingClassState();
}

class _TrendingClassState extends State<TrendingClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          BigText(title: 'QT Blog App',textColor: Colors.red,),
          SizedBox(height: MediaQuery.of(context).size.height*0.03, width: MediaQuery.of(context).size.width*0.03,),
          BigButton(buttonClick: () {
            print('Bigbutton');
          },),

          BigButton(buttonClick: () {
            print('to dassh');
          },),
          const BigText(title: 'Subtitile',),
          Image.asset('assets/images/logo.png', height: MediaQuery.of(context).size.height*0.2,),
          Text('Welcome to Trending News'),
          Text('Get the latest')
        ],
      ),
    );
  }
}
