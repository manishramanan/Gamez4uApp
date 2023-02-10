import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:games4u/screens/profile.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              // width: 30,
              // height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/unknown1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text('My profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
          // ExpansionTile(
          //   leading: Icon(
          //     Icons.person,
          //     color: Colors.black,
          //   ),
          //   title: Text('My profile'),

          //   children: [
          //     ListTile(
          //       title: Text('login'),
          //     ),
          //     ListTile(
          //       title: Text('sign up'),
          //     ),
          //   ],
          // ),
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
          ListTile(
            leading: Icon(
              Icons.sports_cricket,
              color: Colors.black,
            ),
            title: Text('Go Live'),
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
