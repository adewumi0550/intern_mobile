
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/features/auth/presentation/pages/wallet.dart';

import '../../../../core/constraint/colors_string.dart';
import '../../../store/presentation/pages/store.dart';
import '../pages/dashboard.dart';
import '../pages/profile.dart';
import '../pages/transcations.dart';
import '../pages/wallet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const Store(),
    const Wallet(),
    const Profile(),

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: primaryColor,
        //Floating action button on Scaffold
        onPressed: (){
          //code to execute on button press
        },
        child: Icon(Icons.document_scanner_outlined,size: 30,), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button location to left


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 1,
        child: SizedBox(height: 69,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(30)
              )),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = const Dashboard();
                      currentTab = 0;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.house,
                          color: currentTab ==0? primaryColor: Colors.grey,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(' Home', style: TextStyle(color: currentTab ==0? primaryColor: Colors.grey),),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: MaterialButton(onPressed: (){
                      setState(() {
                        currentScreen = const Store();
                        currentTab = 1;
                      });
                    },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(FontAwesomeIcons.store,
                            color: currentTab ==1? primaryColor : Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(' Store', style: TextStyle(color: currentTab ==0? primaryColor: Colors.grey),),
                          )

                          ],
                      ),
                    ),
                  ),

                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = const Wallet();
                      currentTab = 2;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.wallet,
                          color: currentTab ==2 ? primaryColor : Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Wallet', style: TextStyle(color: currentTab ==0? primaryColor: Colors.grey),),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = const Profile();
                      currentTab = 3;
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.gear,
                          color: currentTab == 3 ? primaryColor : Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(' Profile', style: TextStyle(color: currentTab ==0? primaryColor: Colors.grey),),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}