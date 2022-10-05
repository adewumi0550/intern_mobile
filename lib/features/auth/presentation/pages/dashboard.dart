import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/core/constraint/colors_string.dart';
import 'package:internship/features/credit/presentation/pages/transfer.dart';
import 'package:internship/features/store/presentation/pages/store.dart';

import '../../../../core/constraint/colors_string.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      children: [
                        Text(
                          'Location',
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
                      "Welcome Back!",
                      style: GoogleFonts.urbanist(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: backgroundColor,
                      child: const Icon(
                        Icons.notifications,
                      ),
                    ),
                    Container(
                      color: backgroundColor,
                      child: const Icon(
                        Icons.person,
                      ),
                    ),
                  ],
                )
              ],
            ),
            // SizedBox(height: 10,),
            Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    // fit: BoxFit.fill
                  ),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text('Smart Leo:',  style: GoogleFonts.urbanist(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,

                          color: Colors.white,
                          fontWeight: FontWeight.w700),),
                      SizedBox(height: 20,),

                      Text('******8909',  style: GoogleFonts.urbanist(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),),

                      SizedBox(height: 30,),


                      Text('Your Balance',  style: GoogleFonts.urbanist(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),),
                      Center(
                          child: Row(
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
                      )),
                    ],
                  ))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const Store()),
                    );
                  },
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
                            radius: 30,
                            backgroundColor: Colors.white30,
                            child: Icon(

                              Icons.store_mall_directory_outlined,
                              color: Colors.white,
                              size: 40,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Store',
                          style: GoogleFonts.urbanist(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5200FF),
                  ),
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      CircleAvatar(
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
                        'Payment',
                        style: GoogleFonts.urbanist(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const Transfer()),
                    );
                  },
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
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white30,
                            child: Icon(
                              Icons.send_rounded,
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Transfer',
                          style: GoogleFonts.urbanist(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: GoogleFonts.urbanist(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.urbanist(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
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
                            title: Text('Transfer', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,),),
                            subtitle: Text('December 7 04:34pm', style: GoogleFonts.urbanist(color: Colors.grey,fontSize: 10),),
                            trailing: Text('IQD 1,000.00',),
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
                                child: Icon(Icons.account_balance_wallet, color: Colors.white,size: 30,)),
                            title: Text('E-Wallet', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,),),
                            subtitle: Text('December 7 04:34pm', style: GoogleFonts.urbanist(color: Colors.grey,fontSize: 10),),
                            trailing: Text('IQD 1,000.00',),
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
                                child: Icon(Icons.storefront_outlined, color: Colors.white,size: 30,)),
                            title: Text('Debit Payment', style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,),),
                            subtitle: Text('December 7 04:34pm', style: GoogleFonts.urbanist(color: Colors.grey,fontSize: 10),),
                            trailing: Text('IQD 1,000.00',),
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
