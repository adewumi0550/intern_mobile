import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constraint/colors_string.dart';
import 'add_wallet_option.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,

      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children:  [
                        Text(
                          'Hi, Charles',
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                     Text(
                      "Virtual Store",
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
                  child: const Icon(
                    Icons.notifications,
                  ),
                )
              ],
            ),
            // SizedBox(height: 10,),
            Stack(children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    // fit: BoxFit.fill
                  ),
                ),
              ),
              Positioned(
                  bottom: 50,
                  left: 30,
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            'Store Wallet',
                            style: GoogleFonts.urbanist(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Row(
                            children: [


                              Text(
                                'IQD',
                                style: GoogleFonts.urbanist(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                ' 10,000.00',
                                style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30),
                              ),
                            ],
                          ),
                        ],
                      )))
            ]),

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  'Store Located',
                  style: GoogleFonts.urbanist(color: Colors.black, fontSize: 18),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Container(
                  height: 500,
                  child: Column(
                    children: [
                      Container(
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Card(

                          shadowColor: Colors.grey,
                          elevation: 1.0,
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: primaryColor,
                                child: Icon(Icons.storefront_outlined, color: Colors.white,size: 30,)),
                            title: Text('Shopping', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,),),
                            subtitle:Text('10 Located', style: GoogleFonts.urbanist(color: Colors.black),),
                            trailing: Icon(Icons.select_all),
                          ),
                        ),
                      ),
                      Container(
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Card(

                          shadowColor: Colors.grey,
                          elevation: 1.0,
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: primaryColor,
                                child: Icon(Icons.health_and_safety, color: Colors.white,size: 30,)),
                            title: Text('Health Care', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,),),
                            subtitle: Text('4 Located', style: GoogleFonts.urbanist(color: Colors.black),),
                            trailing: Icon(Icons.select_all),
                          ),
                        ),
                      ),
                      Container(
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Card(

                          shadowColor: Colors.grey,
                          elevation: 1.0,
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: primaryColor,
                                child: Icon(FontAwesomeIcons.bowlFood, color: Colors.white,size: 30,)),
                            title: Text('Restaurant', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,),),
                            subtitle: Text('2 Located', style: GoogleFonts.urbanist(color: Colors.black),),
                            trailing: Icon(Icons.select_all),
                          ),
                        ),
                      ),
                      Container(
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Card(

                          shadowColor: Colors.grey,
                          elevation: 1.0,
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: primaryColor,
                                child: Icon(FontAwesomeIcons.car, color: Colors.white,size: 30,)),
                            title: Text('Park', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,),),
                            subtitle: Text('1 Located', style: GoogleFonts.urbanist(color: Colors.black),),
                            trailing: Icon(Icons.select_all),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
