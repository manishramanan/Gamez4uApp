import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'history.dart';

class profilePage extends StatefulWidget {
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<profilePage> {
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            // construct the profile details widget here
            YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
                builder: (context, player) {
                  return Column(
                    children: [
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Madhya Pradesh",
                                          // style: myStyle,
                                        ),
                                        Text(
                                          "\t vs \t",
                                          //style: myStyle,
                                        ),
                                        Text(
                                          "Gujarat",
                                          // style: myStyle,
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
                    ],
                  );
                }),

            // the tab bar with two items
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.directions_bike),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.directions_car,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  HistoryPage(),

                  // second tab bar viiew widget
                  Container(
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        'Car',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
