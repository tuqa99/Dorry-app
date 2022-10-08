import 'package:flutter/material.dart';
import 'package:lab_eleven_group9/Screens/FirstScreen.dart';
import 'package:lab_eleven_group9/componants/splash.dart';

import 'Screens/Home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(fontFamily: ('NotoSerifTelugu-VariableFont_wght')),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}
