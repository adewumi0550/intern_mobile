import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/features/auth/presentation/pages/dashboard.dart';
import 'package:internship/features/auth/presentation/pages/signup.dart';

import '../../../../core/constraint/colors_string.dart';
import '../../../../core/widgets/big_button.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/form_label.dart';
import '../../../../core/widgets/small_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                BigText(textTitle: ' Login to your \n Account'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SmallText(
                    textTitle:
                        'Good to see you again, enter your details below to continue transcation.',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                            labelForm('Email Address'),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                hintText: 'Enter email',
                                focusColor: Colors.black,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  // borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              autocorrect: false,
                              // onChanged: (value) => context
                              //     .read<LoginBloc>()
                              //     .add(LoginEvent.emailChanged(value)),
                              // validator: (_) => context
                              //     .read<LoginBloc>()
                              //     .state
                              //     .emailAddress
                              //     .value
                              //     .fold(
                              //       (f) => f.maybeMap(
                              //     invalidEmail: (_) => 'Username is required',
                              //     orElse: () => null,
                              //   ),
                              //       (_) => null,
                              // ),
                            ),
                            labelForm('Password'),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintText: 'Enter Password',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  // borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              obscureText: true,
                              autocorrect: false,
                              // onChanged: (value) => context
                              //     .read<LoginBloc>()
                              //     .add(LoginEvent.passwordChanged(value)),
                              // validator: (_) =>
                              //     context.read<LoginBloc>().state.password.value.fold(
                              //           (f) => f.maybeMap(
                              //         shortPassword: (_) => 'Enter valid Password',
                              //         orElse: () => null,
                              //       ),
                              //           (_) => null,
                              //     ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      // FlutterSwitch(
                                      //   activeColor: yellowColor,
                                      //   width: 40,
                                      //   height: 40,
                                      //   value: true,
                                      //   onToggle: (val) {
                                      //     // setState(() {
                                      //     //
                                      //     // });
                                      //   },
                                      // ),

                                      Checkbox(
                                        value: true,
                                        onChanged: (value) {
                                          setState(() {
                                            value = value;
                                          });
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          'Remember Me',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            MaterialButton(
                                minWidth: double.infinity,
                                height: 50.0,
                                color: primaryColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.0),
                                    child: Text(
                                      'Authenticate',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const Dashboard()));
                                }),

                            SizedBox(
                              height: 40,
                            ),

                            Center(
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUp()),
                                      );
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Don\'t have an account? ',
                                        style:
                                            TextStyle(color: Color(0xff616161)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignUp()),
                                          );
                                        },
                                        child: Text(
                                          ' Sign up',
                                          style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
          ),
        ));
  }
}

