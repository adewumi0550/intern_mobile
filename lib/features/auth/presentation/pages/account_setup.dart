import 'package:flutter/material.dart';
import '../../../../core/constraint/colors_string.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/form_label.dart';
import '../../../../core/widgets/small_text.dart';

class AccountSetup extends StatefulWidget {
  const AccountSetup({Key? key}) : super(key: key);

  @override
  State<AccountSetup> createState() => _AccountSetupState();
}

class _AccountSetupState extends State<AccountSetup> {
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

                 const BigText(textTitle: 'Setup Your Profile'),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: SmallText(
                  textTitle:
                  'Don \'t worry, you can always change it later',
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
                          labelForm('Full name'),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'John Doe',
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
                          labelForm('Phone Number'),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: '+1 999 999 ',
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

                          labelForm('Nationality'),
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: 'Select Country',
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
                                    'Continue',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute( builder: (context) =>
                                //     const SetWalletPin()));
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

