import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Teacher extends StatelessWidget {
  Teacher({
    required this.nameteacher,
    required this.countryofteacher,
    required this.falagcountry,
    required this.personpicture,
  });

  Color myfavarit = Color.fromARGB(255, 187, 185, 185);
  IconData Lovit = Icons.favorite_border;
  String? nameteacher;
  String? countryofteacher;
  String? falagcountry;
  String? personpicture;
  double? ratingteacher;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
        width: 300,
        height: 266,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 233, 229, 229).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            border: Border.all(
                color: Color.fromARGB(255, 178, 191, 212), width: 3)),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // setState(() {
                    //   Lovit = Icons.favorite;
                    //   myfavarit = Colors.pink;
                    // });
                  },
                  icon: Icon(
                    Lovit,
                    color: myfavarit,
                    size: 33,
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
                Column(
                  children: [
                    Text(
                      '${nameteacher}',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    RatingBarIndicator(
                      rating: 4.5,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                    Row(
                      children: [
                        Text('$countryofteacher'),
                        SizedBox(
                          width: 12,
                        ),
                        Image(
                          image: NetworkImage('$falagcountry'),
                          height: 33,
                          width: 33,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 22,
                      width: 33,
                    ),
                    Image(
                      image: NetworkImage('$personpicture'),
                      height: 100,
                      width: 98,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 66,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                ElevatedButton(
                  child: Text('Profile'),
                  onPressed: (() {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Material Dialog'),
                          content: Text('Hey! I am Coflutter!'),
                          // actions: <Widget>[
                          //   TextButton(onPressed: () {}, child: Text('Close')),
                          //   TextButton(
                          //     onPressed: () {
                          //       print('HelloWorld!');
                          //     },
                          //     child: Text('HelloWorld!'),
                          //   )
                          // ],
                        );
                      },
                    );
                  }),
                ),
                //                VideoItems(
                //   videoPlayerController: VideoPlayerController.network(
                //       "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
                //   ),
                //   looping: true,
                //   autoplay: false,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
