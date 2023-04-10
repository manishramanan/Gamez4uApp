import 'package:flutter/material.dart';
import 'package:games4u/screens/profile_menu.dart/profile.dart';

import '../Password Change/changepassword.dart';
import '../ScoreCardScreens/scoredetails.dart';
import '../history.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<String> myItems = [
    "My Profile",
    "History",
    "Notification",
    "Theme",
    "Payments",
    "Help",
    "Security & Privacy",
    "Logout",
  ];
  List<IconData> icons1 = [
    Icons.person_3_outlined,
    Icons.history,
    Icons.notifications,
    Icons.color_lens,
    Icons.payment,
    Icons.help,
    Icons.security,
    Icons.logout
  ];
  List<IconData> icons2 = [
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
  ];
  List<Widget> screens = [
    const ProfileScreen(),
    const HistoryPage(),
    const UserPage(),
    const UserPage(),
    const UserPage(),
    const UserPage(),
    const ChangePasswordScreen(),
    const UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("My Account"),
            ),
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        Image(
                          image: AssetImage("images/profilebac.png"),
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Center(
                          child: ClipRRect(
                              child: CircleAvatar(
                            foregroundImage: AssetImage("images/cricket.jpg"),
                            radius: MediaQuery.of(context).size.height / 13,
                          )),
                          // CircleAvatar(
                          //   foregroundImage: AssetImage('images/cricket.jpg'),
                          //   radius: MediaQuery.of(context).size.width / 5,
                          // ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "VISHAL",
                                style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const ScrollPhysics(),
                      itemCount: myItems.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screens[index]),
                            ),
                            leading: Icon(
                              icons1[index],
                              size: 20,
                              color: Colors.black,
                            ),
                            title: Text(myItems[index]),
                            trailing: Icon(icons2[index],
                                size: 15, color: Colors.black),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
