import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/features/auth/presentation/pages/verify_email.dart';

import '../../../../core/constraint/colors_string.dart';
import '../../../../core/widgets/big_text.dart';
import '../../../../core/widgets/profile_card.dart';
import '../../../../core/widgets/small_text.dart';
import 'account_setup.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              // BigText(textTitle: 'Create your account'),
              Center(child: CircleAvatar(
                radius: 50,

                  child:Image.asset(
                      'assets/images/logo.png')),),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: Text(
                  'Charles Okey',
                  style: GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 20),
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

                          ProfileCard(icon: Icons.supervised_user_circle, textTitle: 'Security', onTap: () {  },),
                          const SizedBox(
                            height:30,
                          ),

                          ProfileCard(icon: Icons.supervised_user_circle, textTitle: 'Edit Profile', onTap: () {  },),
                          const SizedBox(
                            height:30,
                          ),
                          ProfileCard(icon: Icons.notifications, textTitle: 'Notification', onTap: () {  },),
                          const SizedBox(
                            height:30,
                          ),
                          ProfileCard(icon: Icons.supervised_user_circle, textTitle: 'Support & Help', onTap: () {  },),
                          const SizedBox(
                            height:20,
                          ),
                          ProfileCard(icon: Icons.logout_rounded, textTitle: 'Logout', onTap: () {  }, color: Colors.red,),
                          const SizedBox(
                            height:30,
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
