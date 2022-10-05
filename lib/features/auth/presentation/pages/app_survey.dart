import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'account_setup.dart';
import 'verify_email.dart';

import '../../../../core/constraint/colors_string.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/small_text.dart';



class Survey extends StatefulWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *0.04,
              ),
              // BigText(textTitle: 'Create your account'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BigText(textTitle: 'Reason for Using  WeQuickPay'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: SmallText(
                  textTitle:
                  'We want to provide the best experience according to your needs',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            decoration:BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.,
                                children: [
                                Text('Saves and Payment', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 18),),
                                Checkbox(
                                  value: true,
                                  onChanged: (value) {
                                    setState(() {
                                      value = value;
                                    });
                                  },
                                ),
                              ],),
                            ),
                          ),
                          const SizedBox(
                            height:30,
                          ),

                          Container(
                            decoration:BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.,
                                children: [
                                  Text('Spend while travelling', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 18),),
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {
                                      setState(() {
                                        value = false;
                                      });
                                    },
                                  ),
                                ],),
                            ),
                          ),
                          const SizedBox(
                            height:30,
                          ),

                          Container(
                            decoration:BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.,
                                children: [
                                  Text('Send Money and Manage', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 18),),
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {
                                      setState(() {
                                        value = value;
                                      });
                                    },
                                  ),
                                ],),
                            ),
                          ),
                          const SizedBox(
                            height:30,
                          ),



                          Container(
                            decoration:BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.,
                                children: [
                                  Text('Gain Exposure to financial Assets', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 18),),
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {
                                      setState(() {
                                        value = value;
                                      });
                                    },
                                  ),
                                ],),
                            ),
                          ),


                          const SizedBox(
                            height:20,
                          ),

                          Container(
                            decoration:BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.,
                                children: [
                                  Text('Others', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 18),),
                                  Checkbox(
                                    value: true,
                                    onChanged: (value) {
                                      setState(() {
                                        value = value;
                                      });
                                    },
                                  ),
                                ],),
                            ),
                          ),
                          const SizedBox(
                            height:30,
                          ),


                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 150,
                                  child: MaterialButton(

                                      height: 50.0,
                                      color: Colors.grey,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(vertical: 5.0),
                                          child: Text(
                                            'Skip',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const AccountSetup()),
                                        );
                                      }),
                                ),
                                Container(
                                  width: 150,
                                  child: MaterialButton(

                                      height: 50.0,
                                      color: secondaryColor,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(vertical: 5.0),
                                          child: Text(
                                            'Continue',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const VerifyEmail()),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height:50,
                          ),

                          const SizedBox(
                            height:20,
                          ),


                          // const ColorText(textTitle: 'Login to my account',)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
