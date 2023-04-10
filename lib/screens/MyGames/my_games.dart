import 'package:flutter/material.dart';
import 'package:games4u/screens/MyGames/leaderboard.dart';

import '../../shared/menu_drawer.dart';
import 'add_team.dart';
import 'matches1.dart';
import 'my_team.dart';

// ignore: must_be_immutable
class MyGamesPage extends StatelessWidget {
  MyGamesPage({super.key});

  List<Tab> tabs = [
    const Tab(
      child: Text(
        "Add",
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Tab(
      child: Text(
        "My Team",
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Tab(
      child: Text(
        "Schedule",
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Tab(
      child: Text(
        "Matches",
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Tab(
      child: Text(
        "League",
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Tab(
      child: Text(
        "Statistics",
        style: TextStyle(fontSize: 18),
      ),
    ),
    const Tab(
      child: Text(
        "My Trail",
        style: TextStyle(fontSize: 18),
      ),
    ),
  ];

  List<Widget> tabsContent = [
    const ProfilePageScreen(),
    const MyTeam(),
    Container(color: Colors.blue),
    const MatchesPage(),
    Container(color: Colors.green),
    Container(color: Colors.white),
    Container(color: Colors.cyan),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        drawer: const Drawer(
          child: MenuDrawer(),
        ),
        appBar: AppBar(
          title: const Text("MY GAMES"),
          centerTitle: true,
          backgroundColor: Color(0xFF00A4E4),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: tabs,
            ),
          ),
        ),
        body: TabBarView(children: tabsContent),
      ),
    );
  }
}
