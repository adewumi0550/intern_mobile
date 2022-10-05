import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/features/store/presentation/pages/add_wallet_option.dart';

import '../../../../core/constraint/colors_string.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const WalletPageOption()),
          );
        },
      child: Icon(FontAwesomeIcons.moneyCheck,),

      ),
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
                      children: const [
                        Text(
                          'Hi, Charles',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Store",
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
                      const Text(
                        'Store Wallet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'IQD',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '10,000.00',
                            style: TextStyle(
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
              children: const [
                Text(
                  'Transactions',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
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
                child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: const <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.storefront_outlined,
                            size: 40,
                            color: Colors.pinkAccent,
                          ),
                          title: Text(
                            'BH881222',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            'December 7 04:34pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          trailing: Text(
                            'IQD 3,000.00',
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.storefront_outlined,
                            size: 40,
                            color: Colors.pinkAccent,
                          ),
                          title: Text(
                            'BH881222',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            'December 7 04:34pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          trailing: Text(
                            'IQD 3,000.00',
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.storefront_outlined,
                            size: 40,
                            color: Colors.pinkAccent,
                          ),
                          title: Text(
                            'BH881222',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            'December 7 04:34pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          trailing: Text(
                            'IQD 3,000.00',
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.storefront_outlined,
                            size: 40,
                            color: Colors.pinkAccent,
                          ),
                          title: Text(
                            'BH881222',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            'December 7 04:34pm',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          trailing: Text(
                            'IQD 3,000.00',
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
