import 'package:flutter/material.dart';
import 'package:games4u/screens/ScoreCardScreens/Scoreboard_tab.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'info_tab.dart';
import 'live_tab.dart';

class YoutubePage extends StatefulWidget {
  //int selectedPage = 0;
  // YoutubePage(this.selectedPage);

  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage>
    with SingleTickerProviderStateMixin {
  // int _selectedIndex = 0;
  // bool infovisible = true;
// late final TabController _tabController;

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
    //_tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  // void showToast() {
  //   setState(() {
  //     infovisible = !infovisible;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
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

                  Visibility(
                    // visible: infovisible,
                    child: Expanded(
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly ,
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
                                  Text(
                                    "cricket,Ranji Trophy 2022/23",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.share))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    child: const TabBar(
                      indicatorColor: Colors.black,
                      labelColor: Colors.white,
                      tabs: [
                        Tab(
                          text: "Info",
                        ),
                        Tab(
                          text: "Live",
                        ),
                        Tab(
                          text: "ScoreBoard",
                        ),
                      ],
                      // onTap: (index) {
                      //   setState(() {
                      //     _selectedIndex = index;
                      //     index == 0 ? infovisible = false : infovisible = true;
                      //   });
                      // },
                    ),
                  ),
                  const Expanded(
                    flex: 6,
                    child: TabBarView(
                      children: [
                        // first tab bar view widget
                        FirstTabPage(),
                        // second tab bar viiew widget
                        LivePage(),
                        // third tab bar viiew widget
                        ScoreCardTab(),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
