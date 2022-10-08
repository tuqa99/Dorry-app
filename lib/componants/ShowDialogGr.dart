import 'package:flutter/material.dart';
import 'package:lab_eleven_group9/componants/URL_class.dart';

class ShowDialogGr extends StatelessWidget {
  ShowDialogGr(
      {required this.GrammerNamed,
      required this.NegativeRule,
      required this.PositiveRule,
      this.QustionRule,
      this.PositiveRule2,
      required this.Fun_url});
  String? GrammerNamed;
  String? PositiveRule;
  String? NegativeRule;
  String? QustionRule;
  String? PositiveRule2;
  Function()? Fun_url;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Color.fromARGB(255, 233, 224, 152),
                  actions: [
                    Center(
                        child: Container(
                      // alignment: Alignment.center,
                      color: Color.fromARGB(255, 233, 224, 152),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                color: Color.fromARGB(255, 3, 82, 146),
                                child: Text(
                                  "sentence form",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Color.fromARGB(255, 252, 231, 44)),
                                ),
                              ),
                              Card(
                                color: Color.fromARGB(255, 3, 82, 146),
                                child: Text(
                                  "$GrammerNamed",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 252, 231, 44)),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 20,
                            color: Color.fromARGB(255, 3, 36, 63),
                          ),
                          ListTile(
                            title: Text(
                              "$PositiveRule",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 3, 82, 146),
                                  fontWeight: FontWeight.bold),
                            ),
                            leading: Icon(
                              Icons.add_circle_outline,
                              color: Color.fromARGB(255, 3, 82, 146),
                            ),
                          ),
                          Divider(
                            height: 20,
                            color: Color.fromARGB(255, 3, 36, 63),
                          ),
                          if (PositiveRule2 != null)
                            ListTile(
                              title: Text(
                                "$PositiveRule2",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 3, 82, 146),
                                    fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(
                                Icons.add_circle_outline,
                                color: Color.fromARGB(255, 3, 82, 146),
                              ),
                            ),
                          Divider(
                            height: 20,
                            color: Color.fromARGB(255, 3, 36, 63),
                          ),
                          ListTile(
                            title: Text(
                              "$NegativeRule",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 3, 82, 146),
                                  fontWeight: FontWeight.bold),
                            ),
                            leading: Icon(
                              Icons.remove_circle_outline,
                              color: Color.fromARGB(255, 3, 82, 146),
                            ),
                          ),
                          Divider(
                            height: 20,
                            color: Color.fromARGB(255, 3, 36, 63),
                          ),
                          ListTile(
                            title: Text(
                              "$QustionRule",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 3, 82, 146),
                                  fontWeight: FontWeight.bold),
                            ),
                            leading: Icon(
                              Icons.question_mark_outlined,
                              color: Color.fromARGB(255, 3, 82, 146),
                            ),
                          ),
                          Divider(
                            height: 20,
                            color: Color.fromARGB(255, 3, 36, 63),
                          ),
                          URL_class(
                            myGrFunction: () {
                              Fun_url!();
                            },
                          )
                        ],
                      ),
                    ))
                  ],
                );
              });
        },
        child: ListTile(
          isThreeLine: true,
          title: Text(
            "$GrammerNamed",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 253, 153, 2),
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Press here to view the rules",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 181, 117, 21),
                fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.book_outlined,
            color: Color.fromARGB(255, 253, 153, 2),
          ),
        ),
      ),
    );
  }
}
