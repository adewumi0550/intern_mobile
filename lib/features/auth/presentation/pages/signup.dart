import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/features/auth/presentation/pages/account_setup.dart';
import 'package:internship/features/auth/presentation/pages/app_survey.dart';
import 'package:internship/features/auth/presentation/pages/login.dart';
import 'package:internship/features/auth/presentation/pages/signup.dart';

import '../../../../core/constraint/colors_string.dart';
import '../../../../core/widgets/big_button.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/form_label.dart';
import '../../../../core/widgets/small_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              // BigText(textTitle: 'Create your account'),
              BigText(textTitle: '  Create your \n  Account'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: SmallText(
                  textTitle:
                  'Good to see you again, enter your details below to continue ordering.',
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
                          labelForm('Email Address'),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'abc@qt.com',
                              focusColor: Colors.black,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                                // borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 1.0),
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
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
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

                          labelForm('Confirm Password'),
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
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
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

                          const SizedBox(
                            height:30,
                          ),

                          MaterialButton(
                              minWidth: double.infinity,
                              height: 50.0,
                              color: secondaryColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    'Sign Up',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: whiteColor,
                                      ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const Survey()));

                              }),
                          const SizedBox(
                            height:20,
                          ),
                          const Center(child: Text('By click the signup, you have agree with T&C')),
                         SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Already have an account? ',
                                style:
                                TextStyle(color: Color(0xff616161)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const Login()),
                                  );
                                },
                                child: Text(
                                  ' Sign in',
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
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
