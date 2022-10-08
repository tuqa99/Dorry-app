import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_eleven_group9/Screens/mainScreens/Quizes.dart';
import '../../componants/model.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.score});
  final int score;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/648/6/648-6-101P/Confetti-Mix-Pink-Kind-of-Style-Poster.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildChild(),
              SizedBox(height: 20),
              Text(
                "You got ${widget.score}/${questions.length}",
                style: GoogleFonts.merriweather(
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return Quizes();
                      },
                    ));
                  },
                  icon: Icon(Icons.home),
                  label: Text("Back to QuizList!!")),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChild() {
    if (widget.score <= 1) {
      return Text("That\'s unfortunate",
          style: GoogleFonts.merriweather(
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ));
    } else if (widget.score == 2 || widget.score == 3) {
      return Text("You can do better next time",
          style: GoogleFonts.merriweather(
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ));
    } else if (widget.score == 4 || widget.score == 5) {
      return Column(
        children: [
          Text("Congratulations!!",
              style: GoogleFonts.merriweather(
                textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              )),
          ElevatedButton.icon(
              onPressed: () {
                //   Navigator.pop(context, MaterialPageRoute(
                //     builder: (context) {
                //       return certificate();
                //     },
                //   ));
              },
              icon: Icon(Icons.star_border_purple500_outlined),
              label: Text("Get your Certificate")),
        ],
      );
    }
    return Container();
  }
}
