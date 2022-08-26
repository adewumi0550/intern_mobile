import 'package:flutter/material.dart';

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
        title: const Text('Scaffold Widget'),
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.notifications),
          const Icon(Icons.info),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Blog App',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
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
          )
        ],
      ),
    );
  }
}
