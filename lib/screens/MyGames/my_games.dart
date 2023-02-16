import 'package:flutter/material.dart';

import '../../shared/menu_drawer.dart';

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
    Container(color: Colors.white),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.grey),
    Container(color: Colors.green),
    Container(color: Colors.black),
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
