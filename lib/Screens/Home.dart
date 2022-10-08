import 'dart:io';

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:lab_eleven_group9/Screens/mainScreens/Grammar.dart';
import 'package:lab_eleven_group9/Screens/mainScreens/Quizes.dart';
import 'package:lab_eleven_group9/Screens/mainScreens/Teachers.dart';
import 'package:lab_eleven_group9/Screens/mainScreens/Test.dart';
import 'package:lab_eleven_group9/Screens/mainScreens/meaning.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPage = 0;
  final _pageOptions = [
    Quizes(),
    Teachers(),
    Test(),
    Meaning(),
    Grammar(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Scaffold(
          body: Column(
            children: [
              SafeArea(
                child: Container(
                  height: 211,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 55,
                          ),
                          CircleAvatar(
                            radius: 44,
                            backgroundImage: NetworkImage(
                                'https://media.istockphoto.com/vectors/casual-man-face-avatar-happy-guy-faceless-male-cartoon-character-vector-id1133967800?k=20&m=1133967800&s=612x612&w=0&h=cG8sWhAQz4d6X9mRHvSlU4T6byhnOn1k-q7gqGySZT4='),
                          ),
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ListTile(
                title: Text(' Notifications'),
                leading: Icon(
                  Icons.notification_add_sharp,
                  color: Color.fromARGB(255, 41, 158, 12),
                ),
              ),
              ListTile(
                title: Text(' add Notes'),
                leading: Icon(
                  Icons.note_add,
                  color: Color.fromARGB(255, 12, 105, 158),
                ),
              ),
              ListTile(
                title: Text(' Favorites'),
                leading: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 209, 20, 193),
                ),
              ),
              ListTile(
                title: Text('Setting'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
              Divider(thickness: 2, color: Colors.grey),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: LiteRollingSwitch(
                      value: true,
                      width: 150,
                      textOn: 'Light mood',
                      textOff: 'Dark mood',
                      colorOn: Color.fromARGB(255, 29, 209, 209),
                      colorOff: Colors.blueGrey,
                      iconOn: Icons.light_mode,
                      iconOff: Icons.dark_mode,
                      animationDuration: const Duration(milliseconds: 300),
                      onChanged: (bool state) {
                        print('turned ${(state) ? 'on' : 'off'}');
                      },
                      onDoubleTap: () {},
                      onSwipe: () {},
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        exit(0);
                      },
                      icon: Icon(Icons.logout)),
                  SizedBox(
                    width: 22,
                  ),
                  Text('Log Out')
                ],
              )
            ],
          ),
        ),
      ),

      appBar: AppBar(
        title: Text('Learn with Dorry'),
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(
            icon: Icons.roller_shades,
            title: 'Grammer',
          ),
          TabItem(icon: Icons.read_more, title: 'Meaning'),
          TabItem(icon: Icons.textsms_sharp, title: 'Test'),
          TabItem(icon: Icons.record_voice_over, title: 'Speaking'),
          TabItem(icon: Icons.quiz, title: 'Quizes')
        ],
        height: 66,
        color: Color.fromARGB(255, 246, 247, 220),
        backgroundColor: Color.fromARGB(255, 3, 45, 117),
        activeColor: Color.fromARGB(255, 250, 250, 138),
        initialActiveIndex: 0, //optional, default as 0
        onTap: (int i) {
          setState(() {
            selectedPage = i;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
