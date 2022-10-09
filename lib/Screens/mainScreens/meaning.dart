import 'dart:ui';

// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';

class Words extends StatefulWidget {
  const Words({super.key});

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
  // static AudioCache player1 = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English terms"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue.shade100,
          Colors.blue.shade200,
          Colors.blue.shade300,
          Colors.blue.shade200,
          Colors.blue.shade100,
        ])),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://thumbs.dreamstime.com/b/weather-icons-set-isolated-white-background-clouds-logo-sign-collection-black-blue-yellow-colors-simple-modern-176834343.jpg")),
              title: Text("Weather"),
              subtitle: Text("All you need to know"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      content: Column(children: [
                        Text("To describe the weather"),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icons.iconarchive.com/icons/icons-land/weather/256/Sunny-icon.png"),
                            ),
                            title: Text("Sunny day"),
                            subtitle: Text("shining with bright sunlight"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://www.freeiconspng.com/uploads/cloud-rain-weather-icon-25.png"),
                            ),
                            title: Text("Rainy day"),
                            subtitle:
                                Text("drops of water that fall from clouds"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icon-library.com/images/partly-cloudy-weather-icon/partly-cloudy-weather-icon-12.jpg"),
                            ),
                            title: Text("Cloudy day"),
                            subtitle: Text(
                                "When the sky is cloudy, it's so full of clouds that you can't see the sun"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/578/578159.png"),
                            ),
                            title: Text("Windy day"),
                            subtitle:
                                Text("a period of stormy weatherwindswept"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {
                                final player = AudioPlayer();
                                player.play(AssetSource("sunny day.m4a"));
                              });
                            }),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       final player = AudioPlayer();
                        //       player.play(AssetSource("images/2.wav"));
                        //       player.stop();
                        //     });
                        //   },
                        //   child: Icon(Icons.play_arrow),
                        // ),
                      ]),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://st.depositphotos.com/1107614/3432/v/950/depositphotos_34323783-stock-illustration-transportation-icon-set.jpg")),
              title: Text("transportaion"),
              subtitle: Text("All you need to know"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      content: Column(children: [
                        Text("To describe ways of transportaion"),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://iconarchive.com/download/i99143/icons-land/transporter/Taxi-Right-Yellow.ico"),
                            ),
                            title: Text("taxi"),
                            subtitle:
                                Text("A private car paid to take you places"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://img.freepik.com/premium-vector/bus-icon-design_24877-38816.jpg?w=2000"),
                            ),
                            title: Text("Public Bus"),
                            subtitle: Text(
                                "A bus that takes a specific route, usually takes a small sum of payment, has many stops "),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/1603/1603169.png"),
                            ),
                            title: Text("train"),
                            subtitle: Text(
                                "needs tickets to get on, stops on certain stations"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/4312/4312298.png"),
                            ),
                            title: Text("Airplane"),
                            subtitle: Text("To travel long distances"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                      ]),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2021/05/25/02/03/restaurant-6281067_1280.png")),
              title: Text("Eat out"),
              subtitle: Text("All you need to know"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      content: Column(children: [
                        Text("To describe the weather"),
                        SizedBox(
                          height: 20,
                        ),

                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/1539/1539414.png"),
                            ),
                            title: Text("Sushi"),
                            subtitle: Text("traditional Japanese sea food"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://img.freepik.com/premium-vector/delicious-burger-icon-food-beverages_22052-1.jpg"),
                            ),
                            title: Text("Burger"),
                            subtitle: Text(
                                "Tasty meat with two loafs of bread and vegtables"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/3132/3132693.png"),
                            ),
                            title: Text("pizza"),
                            subtitle: Text("circular bread with topping"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),

                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/4856/4856718.png"),
                            ),
                            title: Text("coffee"),
                            subtitle: Text("hot drink with caffeine"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn0.iconfinder.com/data/icons/drink-50/512/soft-drink-soda-carbonated-512.png"),
                            ),
                            title: Text("Fizzy Drink"),
                            subtitle: Text("Soda"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/167/167247.png"),
                            ),
                            title: Text("juice"),
                            subtitle: Text("Fresh fruity juice"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://thumbs.dreamstime.com/b/cheesecake-strawberry-piece-dessert-cake-vector-icon-illustration-realistic-pastry-169805714.jpg"),
                            ),
                            title: Text("cheese cake"),
                            subtitle: Text("Cheesy sweet cake"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn0.iconfinder.com/data/icons/food-and-drinks-1-8/36/42-512.png"),
                            ),
                            title: Text("Chocolate cake"),
                            subtitle: Text("A chocolity cake"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       final player = AudioPlayer();
                        //       player.play(AssetSource("images/2.wav"));
                        //       player.stop();
                        //     });
                        //   },
                        //   child: Icon(Icons.play_arrow),
                        // ),
                      ]),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-vector/summer-vacation-icon-set_24640-44983.jpg?w=2000")),
              title: Text("Vecation"),
              subtitle: Text("All you need to know"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(children: [
                        Text("To describe the weather"),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icons.iconarchive.com/icons/icons-land/weather/256/Sunny-icon.png"),
                            ),
                            title: Text("Sunny day"),
                            subtitle: Text("shining with bright sunlight"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),

                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://www.freeiconspng.com/uploads/cloud-rain-weather-icon-25.png"),
                            ),
                            title: Text("Rainy day"),
                            subtitle:
                                Text("drops of water that fall from clouds"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icon-library.com/images/partly-cloudy-weather-icon/partly-cloudy-weather-icon-12.jpg"),
                            ),
                            title: Text("Cloudy day"),
                            subtitle: Text(
                                "When the sky is cloudy, it's so full of clouds that you can't see the sun"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/578/578159.png"),
                            ),
                            title: Text("Windy day"),
                            subtitle:
                                Text("a period of stormy weatherwindswept"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       final player = AudioPlayer();
                        //       player.play(AssetSource("images/2.wav"));
                        //       player.stop();
                        //     });
                        //   },
                        //   child: Icon(Icons.play_arrow),
                        // ),
                      ]),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/682/682055.png")),
              title: Text("help"),
              subtitle: Text("All you need to know"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(children: [
                        Text("To describe the weather"),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icons.iconarchive.com/icons/icons-land/weather/256/Sunny-icon.png"),
                            ),
                            title: Text("Sunny day"),
                            subtitle: Text("shining with bright sunlight"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),

                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://www.freeiconspng.com/uploads/cloud-rain-weather-icon-25.png"),
                            ),
                            title: Text("Rainy day"),
                            subtitle:
                                Text("drops of water that fall from clouds"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icon-library.com/images/partly-cloudy-weather-icon/partly-cloudy-weather-icon-12.jpg"),
                            ),
                            title: Text("Cloudy day"),
                            subtitle: Text(
                                "When the sky is cloudy, it's so full of clouds that you can't see the sun"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/578/578159.png"),
                            ),
                            title: Text("Windy day"),
                            subtitle:
                                Text("a period of stormy weatherwindswept"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       final player = AudioPlayer();
                        //       player.play(AssetSource("images/2.wav"));
                        //       player.stop();
                        //     });
                        //   },
                        //   child: Icon(Icons.play_arrow),
                        // ),
                      ]),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://thumbs.dreamstime.com/b/weather-icons-set-isolated-white-background-clouds-logo-sign-collection-black-blue-yellow-colors-simple-modern-176834343.jpg")),
              title: Text("directions"),
              subtitle: Text("All you need to know"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(children: [
                        Text("To describe the weather"),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icons.iconarchive.com/icons/icons-land/weather/256/Sunny-icon.png"),
                            ),
                            title: Text("Sunny day"),
                            subtitle: Text("shining with bright sunlight"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),

                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://www.freeiconspng.com/uploads/cloud-rain-weather-icon-25.png"),
                            ),
                            title: Text("Rainy day"),
                            subtitle:
                                Text("drops of water that fall from clouds"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icon-library.com/images/partly-cloudy-weather-icon/partly-cloudy-weather-icon-12.jpg"),
                            ),
                            title: Text("Cloudy day"),
                            subtitle: Text(
                                "When the sky is cloudy, it's so full of clouds that you can't see the sun"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/578/578159.png"),
                            ),
                            title: Text("Windy day"),
                            subtitle:
                                Text("a period of stormy weatherwindswept"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       final player = AudioPlayer();
                        //       player.play(AssetSource("images/2.wav"));
                        //       player.stop();
                        //     });
                        //   },
                        //   child: Icon(Icons.play_arrow),
                        // ),
                      ]),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/4961/4961552.png")),
              title: Text("Introduction"),
              subtitle: Text("All you need to know"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(children: [
                        Text("To describe the weather"),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icons.iconarchive.com/icons/icons-land/weather/256/Sunny-icon.png"),
                            ),
                            title: Text("Sunny day"),
                            subtitle: Text("shining with bright sunlight"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),

                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://www.freeiconspng.com/uploads/cloud-rain-weather-icon-25.png"),
                            ),
                            title: Text("Rainy day"),
                            subtitle:
                                Text("drops of water that fall from clouds"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://icon-library.com/images/partly-cloudy-weather-icon/partly-cloudy-weather-icon-12.jpg"),
                            ),
                            title: Text("Cloudy day"),
                            subtitle: Text(
                                "When the sky is cloudy, it's so full of clouds that you can't see the sun"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/578/578159.png"),
                            ),
                            title: Text("Windy day"),
                            subtitle:
                                Text("a period of stormy weatherwindswept"),
                            trailing: Icon(Ionicons.volume_high),
                            onTap: () {
                              setState(() {});
                            }),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       final player = AudioPlayer();
                        //       player.play(AssetSource("images/2.wav"));
                        //       player.stop();
                        //     });
                        //   },
                        //   child: Icon(Icons.play_arrow),
                        // ),
                      ]),
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/195/195492.png")),
              title: Text("Housing"),
              subtitle: Text("All you need to know"),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/3135/3135682.png")),
              title: Text("Job interview"),
              subtitle: Text("All you need to know"),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoFxdmgYtFHp7GYlzjaoRZq9kuYxrDZc_cXWqQih3XPKmqzNzSnehLkxR3JevUPD4NamI&usqp=CAU")),
              title: Text("Patry"),
              subtitle: Text("All you need to know"),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn1.iconfinder.com/data/icons/coffee-shop-24/512/Coffee-24-512.png")),
              title: Text("Coffee shop"),
              subtitle: Text("All you need to know"),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/272/272863.png")),
              title: Text("Camping"),
              subtitle: Text("All you need to know"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.blue,
                    content: Text(
                      "Study with DORY!",
                      textAlign: TextAlign.center,
                    ),
                    icon: Container(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media2.giphy.com/media/l46CdoZqbJxQMOvjW/giphy.gif")),
                    ),
                  );
                });
          });
        },
        child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://media2.giphy.com/media/l46CdoZqbJxQMOvjW/giphy.gif")),
      ),
    );
  }
}
