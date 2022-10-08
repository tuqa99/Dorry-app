import 'package:flutter/material.dart';
import '../Componants/botton.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String nameOfapp = 'Learn with Dorry';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 183, 236, 60),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Center(
                    child: Text(
                      '${nameOfapp}',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 33,
                        ),
                        Text(
                          ' improve your english languges with ue',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 44,
              ),
              CircleAvatar(
                  radius: 85,
                  backgroundImage: NetworkImage(
                      'https://c.tenor.com/L4DBkoFme9oAAAAM/dorry.gif')),
              SizedBox(
                height: 44,
              ),
              MaterialBotton_SignUp(),
              SizedBox(
                height: 22,
              ),
              MaterialBotton_log_in(),
            ],
          ),
        ),
      ),
    );
  }
}
