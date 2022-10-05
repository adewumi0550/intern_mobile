import 'package:flutter/material.dart';

import '../../constraint/colors_string.dart';
import '../big_button.dart';

class SuccessPassword extends StatefulWidget {
  const SuccessPassword({Key? key}) : super(key: key);

  @override
  _SuccessPasswordState createState() => _SuccessPasswordState();
}

class _SuccessPasswordState extends State<SuccessPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height/8,),
              SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: Image.asset('assets/images/success.png')),

              SizedBox(height: MediaQuery.of(context).size.height*0.08,),
              BigButton(textTitle:'Proceed to Login', onTap: () {


              },),

              // const ColorText(textTitle: 'Login to my account',)
              const SizedBox(height: 20,),
              Center(
                child: GestureDetector(
                  onTap: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>
                      const SuccessPassword()), );
                  },
                  child: const Text('Login to my account', style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                ),
              )


            ],),
        ),
      ),
    );
  }
}
