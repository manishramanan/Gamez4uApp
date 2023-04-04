import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:games4u/screens/Academy/Cricket_academy.dart';
import 'package:games4u/screens/MyGames/leaderboard.dart';
import 'package:games4u/screens/MyGames/my_games.dart';
import 'package:games4u/screens/Quiz/quizWelcome.dart';
import 'package:games4u/screens/ScoreCardScreens/youtube.dart';
import 'package:games4u/screens/StartMatch/Tournament/Tournament1.dart';
import 'package:games4u/screens/StartMatch/select_text.dart';
import 'package:games4u/screens/Subscrption/subscription.dart';
import '../screens/homescreen_new.dart';
import '../screens/login.dart';
import '../screens/profile_menu.dart/user.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      // final header = DrawerHeader(
      //   child: CircleAvatar(
      //                 foregroundImage: AssetImage('images/cricket.jpg'),
      //                 radius: 50,
      //               ),
      // );
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/profilepic.png'),
                  // fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  color: Colors.black,
                  onPressed: (() => Navigator.pop(context)),
                  icon: Icon(
                    Icons.menu,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text('My Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeNew(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text('My Account'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.gamepad,
              color: Colors.black,
            ),
            title: Text('My Games'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyGamesPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.handshake,
              color: Colors.black,
            ),
            title: Text('Start Match'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SelectText(),
              ));
            },
          ),
          ExpansionTile(
            leading: Icon(
              Icons.sports_cricket,
              color: Colors.black,
            ),
            title: Text('Go Live '),
            children: [
              ListTile(
                title: Text('ScoreBoard'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LeaderPage(),
                  ));
                },
              ),
              ListTile(
                title: Text('Streaming'),
              ),
            ],
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => YoutubePage(),
              ));
            },
            leading: Icon(
              Icons.live_tv_sharp,
              color: Colors.black,
            ),
            title: Text('Live Score'),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.trophy,
              color: Colors.black,
            ),
            title: Text('My Tournaments'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TournamentPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.building,
              color: Colors.black,
            ),
            title: Text('Academy'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CrickAcademyPage(),
              ));
            },
          ),
          // ExpansionTile(
          //   leading: Icon(
          //     FontAwesomeIcons.building,
          //     color: Colors.black,
          //   ),
          //   title: Text('Academy'),
          //   children: [
          //     ListTile(
          //       title: Text('Login'),
          //     ),
          //     ListTile(
          //       title: Text('Register'),
          //     ),
          //   ],
          // ),
          ListTile(
            leading: Icon(
              Icons.subscriptions,
              color: Colors.black,
            ),
            title: Text('Subscription'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.videocam,
              color: Colors.black,
            ),
            title: Text('Videos'),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.brain,
              color: Colors.black,
            ),
            title: Text('Quiz'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QuizWelcome(),
              ));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_support_outlined,
              color: Colors.black,
            ),
            title: Text('About Us'),
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.black,
            ),
            title: Text('Contact Us'),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.black,
            ),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
