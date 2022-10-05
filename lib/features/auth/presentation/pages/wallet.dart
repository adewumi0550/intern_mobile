import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constraint/colors_string.dart';
import '../../../store/presentation/pages/add_wallet_option.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const WalletPageOption()),
          );
        },
        child: Icon(FontAwesomeIcons.moneyCheck,),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Location',
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
                        "My Wallet",
                        style: GoogleFonts.urbanist(
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
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                      crossAxisSpacing: 1.0,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                        ),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            CircleAvatar(
                                radius: 25,
                                backgroundColor: primaryColor,
                                child: Icon(
                                  Icons.account_balance_wallet,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'My Gift Card',
                              style: GoogleFonts.urbanist(
                                  color: primaryColor, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor,
                        ),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white30,
                                child: Icon(
                                  Icons.wallet_giftcard,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'My Gift Card',
                              style: GoogleFonts.urbanist(
                                  color: Colors.white, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),

          Column(
            children: [
              Divider(height: 40
                ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Text('Store Gift Card', style: GoogleFonts.urbanist(fontSize: 20),),
                  Text('8,00000', style: GoogleFonts.urbanist(fontSize: 20),)
                ],
              ),
              Divider(height: 40
                ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Text('Wallet Balance', style: GoogleFonts.urbanist(fontSize: 20),),
                  Text('8,00000', style: GoogleFonts.urbanist(fontSize: 20),),
                ],
              ),

              Divider(height: 40
                ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Text('Total Balance', style: GoogleFonts.urbanist(fontSize: 20, fontWeight: FontWeight.w700),),
                  Text('8,00000', style: GoogleFonts.urbanist(fontSize: 20),),
                ],
              ),
            ],
          )
            ],
          ),
        ),
      ),
    );
  }
}
