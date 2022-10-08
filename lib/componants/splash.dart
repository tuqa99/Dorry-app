import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lab_eleven_group9/Screens/FirstScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FirstScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue.shade100,
        Colors.blue.shade200,
        Colors.blue.shade300,
        Colors.blue.shade200,
        Colors.blue.shade100,
      ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media2.giphy.com/media/l46CdoZqbJxQMOvjW/giphy.gif"),
            ),
          ),
          Container(
            child: Image(
              image: AssetImage("images/1.png"),
            ),
          )
        ],
      ),
    );
  }
}
