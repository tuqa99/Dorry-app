import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Simple_Past_url = Uri.parse(
    'https://www.ef.com/wwen/english-resources/english-grammar/simple-past-tense/');
final Uri Simple_Present_url = Uri.parse(
    'https://www.ef.com/wwen/english-resources/english-grammar/simple-present-tense/');
final Uri past_continuous_url = Uri.parse(
    'https://www.ef.com/wwen/english-resources/english-grammar/past-continuous-tense/');
final Uri present_continuous_url = Uri.parse(
    'https://www.ef.com/wwen/english-resources/english-grammar/present-continuous/');

Future<void> Simple_Past_Fun() async {
  if (!await launchUrl(Simple_Past_url)) {
    throw 'Could not launch $Simple_Past_url';
  }
}

Future<void> Simple_Present_Fun() async {
  if (!await launchUrl(Simple_Present_url)) {
    throw 'Could not launch $Simple_Present_url';
  }
}

Future<void> past_continuous_Fun() async {
  if (!await launchUrl(past_continuous_url)) {
    throw 'Could not launch $past_continuous_url';
  }
}

Future<void> present_continuous_Fun() async {
  if (!await launchUrl(present_continuous_url)) {
    throw 'Could not launch $present_continuous_url';
  }
}

class URL_class extends StatelessWidget {
  URL_class({required this.myGrFunction});
  Function()? myGrFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myGrFunction,
      child: Card(
        color: Color.fromARGB(255, 3, 82, 146),
        child: Text(
          "For more information Press here",
          style:
              TextStyle(fontSize: 23, color: Color.fromARGB(255, 252, 231, 44)),
        ),
      ),
    );
  }
}
