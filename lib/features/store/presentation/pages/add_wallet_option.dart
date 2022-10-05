import 'package:flutter/material.dart';

import '../../../../core/constraint/colors_string.dart';

class WalletPageOption extends StatefulWidget {
  const WalletPageOption({Key? key}) : super(key: key);

  @override
  State<WalletPageOption> createState() => _WalletPageOptionState();
}

class _WalletPageOptionState extends State<WalletPageOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hello, QtCard Card',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, color: Colors.grey),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    child: Icon(
                      Icons.notifications,
                    ),
                  )
                ],
              ),
              const Text('Add The GiftCard Credit in your Vaults '),
              const SizedBox(
                height: 20,
              ),

              Form(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _labelForm('GiftCard ID'),
                  TextFormField(

                    style: const TextStyle(color: Colors.grey),
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(

                      hintText: '222 222 222',
                      hintStyle: TextStyle(color: Colors.grey),
                      errorStyle: TextStyle(color: whiteColor),
                      focusColor: Colors.grey,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                    autocorrect: false,
                    // onChanged: (value) => context
                    //     .read<LoginBloc>()
                    //     .add(LoginEvent.usernameChanged(value)),
                    // validator: (_) =>
                    //     context.read<LoginBloc>().state.username.value.fold(
                    //           (f) => f.maybeMap(
                    //         isEmptyPost: (_) => 'Username is Required',
                    //         orElse: () => null,
                    //       ),
                    //           (_) => null,
                    //     ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  // state.isSubmitting
                  //     ?
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 60.0,
                      color: primaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {})
                      // : MaterialButton(
                      // minWidth: double.infinity,
                      // height: 50.0,
                      // color: primaryColor,
                      // elevation: 0,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      // child: const Text(
                      //   'Login',
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 18.0,
                      //       fontWeight: FontWeight.w400),
                      // ),
                      // onPressed: () {
                      //   context.read<LoginBloc>().add(
                      //     const LoginEvent
                      //         .loginWithEmailAndPassword(),
                      //   );
                      // }),
                  ,const SizedBox(
                    height: 60,
                  ),
                  const Center(
                    child: Text(
                      'Scan the Gift card QrCode   ',
                      style: TextStyle(color: primaryColor, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Center(
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       Navigator.of(context).push(
                  //         MaterialPageRoute(
                  //             builder: (context) => const Dashboard()),
                  //       );
                  //     },
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(
                  //         top: 15.0,
                  //       ),
                  //       child: Container(
                  //         alignment: Alignment.center,
                  //         height: 50,
                  //         width: MediaQuery.of(context).size.width * 0.5,
                  //         decoration: BoxDecoration(
                  //             // color: Colors.white,
                  //             borderRadius: BorderRadius.circular(50.0)),
                  //         child: Row(
                  //           // mainAxisAlignment: MainAxisAlignment.center,
                  //           // crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: <Widget>[
                  //             SvgPicture.asset('assets/images/ic_google.svg'),
                  //             const Padding(
                  //               padding: EdgeInsets.only(left: 10.0),
                  //               child: Text(
                  //                 'Login with Google',
                  //                 style: TextStyle(
                  //                   // decoration: TextDecoration.underline,
                  //                   // fontWeight: FontWeight.w800,
                  //                   // fontSize: 20,
                  //                   color: whiteColor,
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
    ),

              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  height: 150,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white30,
                          child: Icon(
                            Icons.qr_code_2_outlined,
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'QRCODE SCAN',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

_labelForm(String title) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 16.0,
          color: primaryColor,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto'),
    ),
  );
}