
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/core/widgets/big_button.dart';

import '../../../../core/constraint/colors_string.dart';
import 'login.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Color(0xffffff)),
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(

                      child: PageView(
                        controller: _pageController,
                        children: [
                          onBoardPage("splash01.png",
                              "Seamlessly Easy payment Seamlessly Easy payment Seamlessly Easy payment"),
                          onBoardPage("splash02.png",
                              "Pay for your goods product with ease"),
                          onBoardPage(
                            "splash03.png",
                            'Select mode of payment.',
                          )
                        ],
                        onPageChanged: (value) => {setCurrentPage(value)},
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        List.generate(3, (index) => getIndicator(index)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: BigButton(onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        }, textTitle: 'Get Started'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column onBoardPage(String image, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),


        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Center(
            child: Image.asset(
              "assets/images/$image",
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              fontSize: 25,
              color: primaryColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      height: 5,
      width: (currentPage == pageNo) ? 8 : 8,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: (currentPage == pageNo) ? primaryColor : Colors.grey),
    );
  }
}
