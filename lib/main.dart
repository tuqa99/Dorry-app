import 'package:flutter/material.dart';
import 'package:lab_eleven_group9/Screens/FirstScreen.dart';

import 'Screens/Home.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstScreen();
  }
}
