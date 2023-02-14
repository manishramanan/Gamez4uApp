import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:games4u/screens/profile_menu.dart/profile.dart';
import 'package:games4u/screens/profile_menu.dart/user_account.dart';

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
                    onPressed: (() => Navigator.pop(context)),
                    icon: Icon(
                      Icons.menu,
                      size: 25,
                    )),
              ),
            ),
          ),
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   image: DecorationImage(
          // image: AssetImage('images/profilepic.png'),

          //   ),
          // ),
          // child: Align(
          //     alignment: Alignment.topLeft,
          //     child: IconButton(
          //       onPressed: (() => Navigator.pop(context)),
          //       icon: Icon(
          //         Icons.menu,
          //         color: Colors.black,
          //         size: 26,
          //       ),
          //     )),

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
                  builder: (context) => const ProfileMenu(),
                ),
              );
            },
          ),
          ExpansionTile(
            leading: Icon(
              FontAwesomeIcons.gamepad,
              color: Colors.black,
            ),
            title: Text('My Games'),
            children: [
              ListTile(
                title: Text('My Team'),
              ),
              ListTile(
                title: Text('Matches'),
              ),
              ListTile(
                title: Text('Leagues'),
              ),
              ListTile(
                title: Text('Ranking'),
              ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.handshake,
              color: Colors.black,
            ),
            title: Text('Start Match'),
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
              ),
              ListTile(
                title: Text('Streaming'),
              ),
            ],
          ),
          ListTile(
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
          ),
          ExpansionTile(
            leading: Icon(
              FontAwesomeIcons.building,
              color: Colors.black,
            ),
            title: Text('Academy'),
            children: [
              ListTile(
                title: Text('Login'),
              ),
              ListTile(
                title: Text('Register'),
              ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.subscriptions,
              color: Colors.black,
            ),
            title: Text('Subscription'),
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
        ],
      ),
    );
  }
}
