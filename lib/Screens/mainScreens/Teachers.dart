import 'package:flutter/material.dart';
import '../../Componants/Techecher profile.dart';
import './Teachers.dart';

class Teachers extends StatelessWidget {
  Teachers({super.key});
  List teachername = [
    'Tom Miller',
    'Hayley L',
    'Moses A.',
    'Stuart Kay',
    'Euan H'
  ];
  List countryofteacher = [
    'Canada',
    'Canada',
    'South\n africa',
    'United\n Kingdom',
    'Melbourne\n Australia'
  ];
  List falagcountry = [
    'https://www.cambly.com/static/images/country-flag-icons/roundFlags/CA.png',
    'https://www.cambly.com/static/images/country-flag-icons/CA.png',
    'https://www.cambly.com/static/images/country-flag-icons/ZA.png',
    'https://www.cambly.com/static/images/country-flag-icons/GB.png',
    'https://www.cambly.com/static/images/country-flag-icons/AU.png'
  ];
  List personpicture = [
    'https://camblyavatars.s3.amazonaws.com/5ccd069afcebb5002ff58402s200?h=384e7cbf623d7ee4eb350a8d3212b9ad',
    'https://camblyavatars.s3.amazonaws.com/62a75bc6b8f87cbd9672a221s200?h=651d816d342f1c21831595498559acd6',
    'https://camblyavatars.s3.amazonaws.com/62f1079640ef075bd675db5ds200?h=38425b730527d077f8a341a4a1906d8c',
    'https://camblyavatars.s3.amazonaws.com/620f9245da7fe2a23d879676s200?h=c175eb602a3a2947a7bf79d5d6d13867',
    'https://camblyavatars.s3.amazonaws.com/5e72f541b9b9474369e35056s200?h=fba6d44ef2b9032223f2d93861b502ad'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return Teacher(
              nameteacher: teachername[index],
              countryofteacher: countryofteacher[index],
              falagcountry: falagcountry[index],
              personpicture: personpicture[index]);
        },
      ),
    );
  }
}
