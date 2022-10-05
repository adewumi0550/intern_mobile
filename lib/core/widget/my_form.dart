import 'package:flutter/material.dart';

class MyFormApp extends StatefulWidget {
  const MyFormApp({Key? key}) : super(key: key);

  @override
  State<MyFormApp> createState() => _MyFormAppState();
}

class _MyFormAppState extends State<MyFormApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Form'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text('My Form'),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
                child:
            Container(
              height: 500,
              child: ListView(children: [
                TextField(
                 decoration: InputDecoration(
                   label: Text('Full name'),

                 ),

                ),
                Divider(),

                SizedBox(height: 10,),
                Text('Username'),
                TextFormField(
                  style: const TextStyle(color: Colors.red),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: const InputDecoration(

                    hintText: 'Full Name ',
                    hintStyle: TextStyle(color: Colors.red),
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    errorStyle: TextStyle(color: Colors.red),
                    // focusColor: formColor,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                  ),
                  autocorrect: false,

                ),
              ],),
            )),
          )
        ],
      ),
    );
  }
}
