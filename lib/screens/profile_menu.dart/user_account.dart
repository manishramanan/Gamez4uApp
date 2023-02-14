import 'package:flutter/material.dart';
import 'package:games4u/screens/profile_menu.dart/profile.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            iconSize: 25,
            icon: const Icon(Icons.arrow_back),
            onPressed: (() => Navigator.pop(context))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          ' My Account ',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(
              Icons.cancel_rounded,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      alignment: Alignment.topLeft,
                      image: AssetImage(
                        'images/profilebac.png',
                        // width: 100,
                      ))),
              // color: Colors.green,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: CircleAvatar(
                      foregroundImage: AssetImage('images/cricket.jpg'),
                      radius: 50,
                    ),
                  ),
                  Text(
                    ' VISHAL ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView(
              padding: EdgeInsets.only(top: 0),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  title: Text('My Profile'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  title: Text('Notification'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(
                    Icons.color_lens,
                    color: Colors.black,
                  ),
                  title: Text('Theme'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(Icons.payment, color: Colors.black),
                  title: Text('Payment'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.black,
                  ),
                  title: Text('Help'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(
                    Icons.security,
                    color: Colors.black,
                  ),
                  title: Text('Security & Privacy'),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: Text('Logout'),
                  // trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
