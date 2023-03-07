import 'dart:math';

import 'package:flutter/material.dart';
import 'package:games4u/screens/example2.dart';
import 'package:games4u/screens/history.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  final TextStyle myStyle = const TextStyle(
      fontFamily: "Gilroy",
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16);

  final videoURL = "https://www.youtube.com/watch?v=s8OJgjKlxnk";
  //final videoURL = "https://www.youtube.com/watch?v=yd7EMaQwe1k&t";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        // forceHD: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
            builder: (context, player) {
              return Column(
                children: [
                  // some widgets
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: player,
                    ),
                  ),
                  //Text("data"),
                  //some other widgets
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // image: DecorationImage(
                        //   image: AssetImage('images/soccer.jpg'),
                        //   fit: BoxFit.cover,
                        //   opacity: 0.25,
                        // ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Madhya Pradesh",
                                      style: myStyle,
                                    ),
                                    Text(
                                      "\t vs \t",
                                      style: myStyle,
                                    ),
                                    Text(
                                      "Gujarat",
                                      style: myStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [Icon(Icons.share)],
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "cricket,Ranji Trophy 2022/23",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Expanded(
                  //   flex: 6,
                  //   child: Column(
                  //     children: [
                  //       Container(
                  //         height: 30,
                  //         color: Colors.green,
                  //         child: TabBar(tabs: [
                  //           Tab(
                  //             icon: Icon(
                  //               Icons.directions_bike,
                  //             ),
                  //           ),
                  //           Tab(
                  //             icon: Icon(
                  //               Icons.directions_car,
                  //             ),
                  //           ),
                  //         ]),
                  //       ),
                  //       TabBarView(
                  //         children: [
                  //           // first tab bar view widget
                  //           Container(
                  //             color: Colors.red,
                  //             child: Center(
                  //               child: Text(
                  //                 'Bike',
                  //               ),
                  //             ),
                  //           ),

                  //           // second tab bar viiew widget
                  //           Container(
                  //             color: Colors.pink,
                  //             child: Center(
                  //               child: Text(
                  //                 'Car',
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  TabBar(
                      indicatorColor: Colors.black,
                      labelColor: Colors.amber,
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.directions_bike,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.directions_car,
                          ),
                        ),
                        Tab(
                          text: "avava",
                        ),
                        Tab(
                          text: "vaeaeav",
                        )
                      ]),
                  Expanded(
                      flex: 6,
                      child: TabBarView(
                        children: [
                          // first tab bar view widget
                          HistoryPage(),
                          // Container(
                          //   color: Colors.red,
                          //   child: Center(
                          //     child: Text(
                          //       'Bike',
                          //     ),
                          //   ),
                          // ),

                          // second tab bar viiew widget
                          DetailsPage(),
                          Container(
                            color: Colors.yellow,
                            child: Center(
                              child: Text(
                                'Car',
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                'Car',
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
