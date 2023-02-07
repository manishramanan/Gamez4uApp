import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:games4u/screens/profile.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('BEO SPORTS'),
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
                title: Text('Add Team'),
              ),
              ExpansionTile(
                title: Text('Schedule'),
                children: [
                  ListTile(
                    title: Text('Matches'),
                  ),
                  ListTile(
                    title: Text('Leagues'),
                  ),
                ],
              )
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
              FontAwesomeIcons.trophy,
              color: Colors.black,
            ),
            title: Text('My Tournaments'),
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.building,
              color: Colors.black,
            ),
            title: Text('Academy'),
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
              Icons.help,
              color: Colors.black,
            ),
            title: Text('Help'),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
