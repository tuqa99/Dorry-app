import 'package:flutter/material.dart';
import 'package:lab_eleven_group9/componants/ShowDialogGr.dart';
import 'package:lab_eleven_group9/componants/URL_class.dart';

class HomeGrammerPage extends StatefulWidget {
  const HomeGrammerPage({super.key});

  @override
  State<HomeGrammerPage> createState() => _HomeGrammerPageState();
}

class _HomeGrammerPageState extends State<HomeGrammerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 183, 239, 245),
          child: Column(
            children: [
              Container(
                  height: 250,
                  width: 900,
                  child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("images/simple_past.png"))),
              ShowDialogGr(
                GrammerNamed: "Simple past",
                NegativeRule: "Subject+didn't+V1(Base form)",
                PositiveRule: "subject + V2",
                QustionRule: "did + subject + V1(Base form)",
                Fun_url: () {
                  Simple_Past_Fun();
                },
              ),
              Container(
                  height: 250,
                  width: 900,
                  child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("images/simple_present.png"))),
              ShowDialogGr(
                Fun_url: () {
                  Simple_Present_Fun();
                },
                GrammerNamed: "Simple present",
                NegativeRule:
                    "she,he,it +doesn't + V1(Base form),I,you,we,they+don't+V1(Base form)",
                PositiveRule2: "she,he,it +V/s",
                PositiveRule: "I,you,we,they+V1(Base form)",
                QustionRule: "do/does + subject + V1/Vs",
              ),
              Container(
                  height: 260,
                  width: 900,
                  child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("images/Past_cont.png"))),
              ShowDialogGr(
                Fun_url: () {
                  past_continuous_Fun();
                },
                GrammerNamed: "past continuous",
                NegativeRule:
                    "I,she,he,it + wasn't + V/ing , you,we,they + weren't + V/ing",
                PositiveRule2: "I,she,he,it + was + V/ing",
                PositiveRule: "you,we,they + were + V/ing",
                QustionRule: "were/was + subject + V/ing",
              ),
              Container(
                  height: 250,
                  width: 900,
                  child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("images/present_cont.png"))),
              ShowDialogGr(
                Fun_url: () {
                  present_continuous_Fun();
                },
                GrammerNamed: "present continuous",
                NegativeRule:
                    "I'm not,she/he/it isn't,you,we,they aren't + V/ing",
                PositiveRule: "I'm ,she/he/it is + V/ing",
                PositiveRule2: "you,we,they + are + V/ing",
                QustionRule: "are/is + subject + V/ing",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
