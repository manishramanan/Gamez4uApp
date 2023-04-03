import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import '../shared/menu_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A4E4),
      extendBodyBehindAppBar: true,
      drawer: const Drawer(
        child: MenuDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          height: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              filled: true,
              contentPadding: const EdgeInsets.all(12),
              suffixIcon: IconButton(
                color: Colors.blue,
                onPressed: (() {}),
                icon: const Icon(Icons.search),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
        ),
        actions: [
          IconButton(
            alignment: Alignment.centerRight,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.location_on,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF00A4E4),
                Color.fromARGB(254, 254, 254, 254),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Reusablecode(
                        txt: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Cricket',
                            style: TextStyle(
                              //fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Reusablecode(
                        txt: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Hockey',
                            style: TextStyle(
                              //fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Reusablecode(
                        txt: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Tennis',
                            style: TextStyle(
                              //fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Reusablecode(
                        txt: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Chess',
                            style: TextStyle(
                              //fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Reusablecode(
                        txt: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Football',
                            style: TextStyle(
                              //fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Reusablecode(
                        txt: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Kabaddi',
                            style: TextStyle(
                              //fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'UPCOMING TOURNAMENT',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Reusableimage(
                          picture: AssetImage("images/kabaddi.jpg"),
                        ),
                        Reusableimage(
                          picture: AssetImage("images/basketball123.png"),
                        ),
                        Reusableimage(
                          picture: AssetImage("images/hockey.jpg"),
                        ),
                        Reusableimage(
                          picture: AssetImage("images/soccer.jpg"),
                        ),
                        Reusableimage(
                          picture: AssetImage("images/tenns.jpg"),
                        ),
                        Reusableimage(
                          picture: AssetImage("images/cricket.jpg"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  //height: 30,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'SPONSERS',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 35,
                              child: Image.asset("images/amezon.png"),
                            ),
                            SizedBox(
                              height: 31,
                              child: Image.asset("images/byjus.png"),
                            ),
                            SizedBox(
                              height: 33,
                              child: Image.asset("images/tata.png"),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'ACADEMY NEAR ME',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: const [
                        ReuseImage(
                          pic: AssetImage("images/cricket.jpg"),
                        ),
                        ReuseImage(
                          pic: AssetImage("images/basketball1.png"),
                        ),
                        ReuseImage(
                          pic: AssetImage("images/chess1.jpg"),
                        ),
                        ReuseImage(
                          pic: AssetImage("images/football.png"),
                        ),
                        ReuseImage(
                          pic: AssetImage("images/baseball.jpg"),
                        ),
                        ReuseImage(
                          pic: AssetImage("images/kabaddi.jpg"),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: 30,
                          width: 160,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black87,
                                offset: Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: const SingleChildScrollView(
                            child: Center(
                              child: Text(
                                'CURRENT NEWS',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(3),
                        child: Text(
                            'The Athletic delivers powerful stories and \n\t\t smart analysis that bring sports fans \n \t \t \t \t closer to the heart of the game.'),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black87,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 8),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://thumbs.dreamstime.com/b/female-field-hockey-player-passing-to-team-mate-modern-water-artificial-astroturf-146183044.jpg',
                                ),
                                radius: 20.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Sai Vishal',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                                  child: Text(
                                    'The Athletic delivers powerful stories.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.black,
                                          size: 18,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          CupertinoIcons.conversation_bubble,
                                          color: Colors.black,
                                          size: 18,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          CupertinoIcons.share,
                                          color: Colors.black,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.gamepad_outlined,
              color: Colors.black,
            ),
            label: 'Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_outlined,
              color: Colors.black,
            ),
            label: 'Add',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
            label: 'Message',
          ),
        ],
      ),
    );
  }
}

class ReuseImage extends StatelessWidget {
  const ReuseImage({super.key, required this.pic});

  final AssetImage pic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 65,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: pic,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Reusableimage extends StatelessWidget {
  const Reusableimage({super.key, required this.picture});

  final AssetImage picture;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: picture,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Reusablecode extends StatelessWidget {
  const Reusablecode({super.key, required this.txt});
  final TextButton txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Center( 
          child: txt,
        ),
      ),
    );
  }
}
