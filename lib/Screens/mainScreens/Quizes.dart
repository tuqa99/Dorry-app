import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_eleven_group9/Screens/quizlist/diagnostic-quiz.dart';

import '../quizlist/level1.dart';
import '../quizlist/level2.dart';
import '../quizlist/level3.dart';
import '../quizlist/level4.dart';

class Quizes extends StatelessWidget {
  const Quizes({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 21, 25, 97),
            Color.fromARGB(255, 22, 148, 254),
          ]),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              child: Text("List of our Quizes!!",
                  style: GoogleFonts.merriweather(
                    textStyle: TextStyle(fontSize: 30, color: Colors.white70),
                  )),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white60,
                      offset: Offset(5, 5),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromARGB(255, 152, 25, 101),
                  border: Border.all(width: 4, color: Colors.white70),
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 152, 25, 101),
                        title: Text(
                          "Diagnostic Test",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        content: Text(
                          "proceed to the Quiz??",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return diagnosticQuiz();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade600,
                              ),
                              child: Text("Yes!!",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                title: Text(
                  "diagnostic test",
                  style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: .5)),
                ),
                subtitle: Text("Diagnostic Test"),
                leading: Icon(Icons.quiz),
                trailing: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://ih1.redbubble.net/image.229435197.7693/st,small,507x507-pad,600x600,f8f8f8.u19.jpg")),
                iconColor: Colors.white,
                textColor: Colors.white,
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white60,
                      offset: Offset(5, 5),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromARGB(255, 152, 25, 101),
                  border: Border.all(width: 4, color: Colors.white70),
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 152, 25, 101),
                        title: Text(
                          "Level 1 Quiz",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        content: Text(
                          "proceed to the Quiz??",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Level1();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade600,
                              ),
                              child: Text("Yes!!",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                title: Text(
                  "Beginner",
                  style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: .5)),
                ),
                subtitle: Text("Level 1"),
                leading: Icon(Icons.quiz),
                trailing: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://ih1.redbubble.net/image.229435197.7693/st,small,507x507-pad,600x600,f8f8f8.u19.jpg")),
                iconColor: Colors.white,
                textColor: Colors.white,
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white60,
                      offset: Offset(5, 5),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromARGB(255, 152, 25, 101),
                  border: Border.all(width: 4, color: Colors.white70),
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 152, 25, 101),
                        title: Text(
                          "Level 2 Quiz",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        content: Text(
                          "proceed to the Quiz??",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return level2();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade600,
                              ),
                              child: Text("Yes!!",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                title: Text(
                  "Intermediate",
                  style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: .5)),
                ),
                subtitle: Text("Level 2"),
                leading: Icon(Icons.quiz),
                trailing: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://www.seekpng.com/png/detail/51-517679_nemo-fish-nemo-cartoon.png")),
                iconColor: Colors.white,
                textColor: Colors.white,
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white60,
                      offset: Offset(5, 5),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromARGB(255, 152, 25, 101),
                  border: Border.all(width: 4, color: Colors.white70),
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 152, 25, 101),
                        title: Text(
                          "Level 3 Quiz",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        content: Text(
                          "proceed to the Quiz??",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Level3();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade600,
                              ),
                              child: Text("Yes!!",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                title: Text(
                  "Advanced",
                  style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: .5)),
                ),
                subtitle: Text("Level 3"),
                leading: Icon(Icons.quiz),
                trailing: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://imgix.bustle.com/rehost/2016/9/13/34e05f14-06f9-4ac6-baa5-f6c9ba4c9d0d.jpg?w=800&fit=crop&crop=faces&auto=format%2Ccompress")),
                iconColor: Colors.white,
                textColor: Colors.white,
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white60,
                      offset: Offset(5, 5),
                      blurRadius: 4,
                    )
                  ],
                  color: Color.fromARGB(255, 152, 25, 101),
                  border: Border.all(width: 4, color: Colors.white70),
                  borderRadius: BorderRadius.circular(50)),
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 152, 25, 101),
                        title: Text(
                          "Level 4 Quiz",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        content: Text(
                          "proceed to the Quiz??",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Level4();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade600,
                              ),
                              child: Text("Yes!!",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                title: Text(
                  "Fluent",
                  style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: .5)),
                ),
                subtitle: Text("Level 4"),
                leading: Icon(Icons.quiz),
                trailing: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://static.wikia.nocookie.net/pixar/images/d/de/Hank_FD.jpg/revision/latest?cb=20160330202717")),
                iconColor: Colors.white,
                textColor: Colors.white,
                tileColor: Colors.white,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
