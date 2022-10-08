import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../componants/model.dart';
import 'package:lab_eleven_group9/Screens/quizlist/ResultPage.dart';

class Level3 extends StatefulWidget {
  const Level3({super.key});

  @override
  State<Level3> createState() => _level3State();
}

class _level3State extends State<Level3> {
  int questionnumber = 1;
  int Score = 0;
  bool isLocked = false;
  late PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                height: 150,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Color.fromARGB(255, 152, 25, 101),
                ])),
                child: Text(
                    'Question $questionnumber/${level3questions.length}',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white))),
              ),
              Divider(
                height: 20,
                thickness: 3,
                color: Colors.blueGrey,
              ),
              Expanded(
                  child: PageView.builder(
                itemCount: level3questions.length,
                controller: controller,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final question = level3questions[index];
                  return buildQuestion(question);
                },
              )),
              isLocked ? buildElevatedButton() : SizedBox.shrink(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          question.text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: optionWidget(
          question: question,
          onClickOption: (option) {
            if (question.isLocked) {
              return;
            } else {
              setState(() {
                question.isLocked = true;
                question.selectedOption = option;
              });
              isLocked = question.isLocked;
              if (question.selectedOption!.isCorrect) {
                Score++;
              }
            }
          },
        ))
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
        onPressed: () {
          if (questionnumber < level1questions.length) {
            controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInExpo);
            setState(() {
              questionnumber++;
              isLocked = false;
            });
          } else {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(score: Score),
                ));
          }
        },
        child: Text(questionnumber < level1questions.length
            ? 'Next Page'
            : 'See the Result'));
  }
}

class optionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickOption;
  const optionWidget({
    Key? key,
    required this.question,
    required this.onClickOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (SingleChildScrollView(
      child: Column(
        children: question.options
            .map((option) => buildOption(context, option))
            .toList(),
      ),
    ));
  }

  Widget buildOption(BuildContext context, Option option) {
    final color = getColor(option, question);
    return GestureDetector(
      onTap: () => onClickOption(option),
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(vertical: 8),
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade50,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: color)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: TextStyle(fontSize: 20),
            ),
            getIcon(option, question)
          ],
        ),
      ),
    );
  }

  Color getColor(Option option, Question question) {
    final isSelected = (option == question.selectedOption);
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade300;
  }

  Widget getIcon(Option option, Question question) {
    final isSelected = (option == question.selectedOption);
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : Icon(
                Icons.cancel,
                color: Colors.red,
              );
      } else if (option.isCorrect) {
        return Icon(
          Icons.check_circle,
          color: Colors.green,
        );
      }
    }
    return SizedBox.shrink();
  }
}
