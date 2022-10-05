import 'package:flutter/material.dart';

import '../core/widget/my_form.dart';
import 'dartProgramming.dart';

class ScaffoldUi extends StatefulWidget {
  const ScaffoldUi({Key? key}) : super(key: key);

  @override
  State<ScaffoldUi> createState() => _ScaffoldUiState();
}

class _ScaffoldUiState extends State<ScaffoldUi> {
  @override
  Widget build(BuildContext context) {
    //Widget
    //Material Widget
    //Scaffold Widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog App ff'),
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.notifications),
          const Icon(Icons.info),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:10 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'QT Blog App',

                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  <Widget>[
              ElevatedButton(

                  onPressed: (){
                    // print('Trending');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TrendingClass()),
                    );
                  },
                  child: Text('Trending News', style: TextStyle(color: Colors.white, fontSize: 14),)),
              Text('Latest News', style: TextStyle(color: Colors.blue, fontSize: 14),)
            ],),
            // SizedBox(height: 20,),
            const Text(
                'About ASUU strike, Indefinite strikeAbout ASUU strike, Indefinite strikeAbout ASUU strike, Indefinite strikeAbout ASUU strike, Indefinite strikeAbout ASUU strike, Indefinite strikeAbout ASUU strike, Indefinite strike '),
            const Divider(
              thickness: 2.0,
              color: Colors.red,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Text(
                      'Latest News Indefinite strikeAbout ASUU strike,Indefinite strikeAbout ASUU strike,Indefinite strikeAbout ASUU strike,Indefinite strikeAbout ASUU strike,'),
                ),
                Text('Trending News'),
                Text('Upcoming Event'),
                Container(
                  child: Column(),
                ),


              ],
            ),

            ElevatedButton(

                onPressed: (){
                  // print('Trending');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormApp()),
                  );
                },
                child: const Text('Register on my blog', style: TextStyle(color: Colors.white, fontSize: 14),)),
          ],
        ),
      ),
    );
  }
}
