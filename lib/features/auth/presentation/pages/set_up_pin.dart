import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:internship/features/auth/presentation/widgets/home.dart';

import '../../../../core/constraint/colors_string.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/form_label.dart';
import '../../../../core/widgets/small_text.dart';
import 'login.dart';

class SetWalletPin extends StatefulWidget {
  const SetWalletPin({Key? key}) : super(key: key);

  @override
  State<SetWalletPin> createState() => _SetWalletPinState();
}

class _SetWalletPinState extends State<SetWalletPin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              // BigText(textTitle: 'Create your account'),

              BigText(textTitle: 'Create New Pin'),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: SmallText(
                  textTitle:
                  'Add a Pin number to make your account  more secure',
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

                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: PinCodeTextField(
                              appContext: context,
                              pastedTextStyle: TextStyle(
                                color: Colors.grey.shade100,
                                fontWeight: FontWeight.bold,
                              ),
                              length: 4,
                              // bac: Colors.amberAccent,
                              obscureText: true,
                              obscuringCharacter: '*',
                              // obscuringWidget: const FlutterLogo(
                              //   size: 24,
                              // ),
                              blinkWhenObscuring: true,
                              animationType: AnimationType.fade,

                              pinTheme: PinTheme(
                                selectedFillColor: Colors.grey,
                                inactiveFillColor: Colors.white,
                                selectedColor: Colors.white,
                                inactiveColor: Colors.white,
                                activeColor: Colors.white,
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 50,
                                fieldWidth: 40,
                                activeFillColor: Colors.white,
                              ),
                              cursorColor: Colors.black,
                              animationDuration: const Duration(milliseconds: 300),
                              enableActiveFill: true,

                              keyboardType: TextInputType.number,
                              boxShadows: const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  color: Colors.black12,
                                  blurRadius: 10,
                                )
                              ],
                              onCompleted: (v) {
                                debugPrint("Completed");
                              },
                              // onTap: () {
                              //   print("Pressed");
                              // },

                              beforeTextPaste: (text) {
                                debugPrint("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              }, onChanged: (String value) {  },

                              //   onChanged: (value) => context
                              //     .read<RegisterFormBloc>()
                              //     .add(RegisterFormEvent.otpCodeChanged(value)),
                              //   validator: (_) => context
                              //       .read<RegisterFormBloc>()
                              //       .state
                              //       .otpCode
                              //       .value
                              //       .fold(
                              //         (f) => f.maybeMap(
                              //       isEmptyPost: (_) =>
                              //       'Enter OTP Code sent',
                              //       orElse: () => null,
                              //     ),
                              //         (_) => null,
                              //   ),
                              // ),

                            ),
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
                                    'Create Pin',
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
                                      const Home()),
                                );
                              }),
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
