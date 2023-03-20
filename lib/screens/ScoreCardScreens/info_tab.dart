import 'package:flutter/material.dart';
import 'package:games4u/screens/ScoreCardScreens/youtube.dart';
import 'package:games4u/screens/history.dart';

import '../Subscrption/subscription.dart';
import 'squad.dart';

class FirstTabPage extends StatefulWidget {
  const FirstTabPage({super.key});

  @override
  State<FirstTabPage> createState() => _FirstTabPageState();
}

class _FirstTabPageState extends State<FirstTabPage> {
  @override
  Widget build(BuildContext context) {
    List<String> team_name = ["Madhya Pradesh", "Gujarat"];
    List<String> leading_names = ["Match", "Time", "Venue"];
    List<String> title_name = [
      "Final,T20,Indian Premium League , 2023",
      "16/10/2023 , 7:00pm",
      "M.A. ChinnaSwamy Stadium"
    ];

    List images = ["images/soccer.jpg", "images/shuttle.png"];

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                ),
                child: Text(
                  "Teams",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                ),
              ),
            ),

            // ListTile(
            //   onTap: () {},
            //   leading: CircleAvatar(
            //     radius: 20,
            //     child: Image(
            //       image: AssetImage(
            //         "images/chess1.jpg",
            //       ),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            //   title: Text("aeef"),
            //   trailing: Icon(Icons.arrow_right),
            //   shape: Border(
            //     bottom: BorderSide(
            //       color: Colors.grey,
            //       width: 1.0,
            //       style: BorderStyle.solid,
            //     ),
            //   ),
            // ),
            // ListTile(
            //   onTap: () {},
            //   leading: Image(
            //     image: AssetImage("images/chess1.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            //   title: Text("abcd"),
            // ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    if (index % 2 == 0) {
                      // Navigate to path A for even index
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TeamsPlayer(initialTabIndex: 0)),
                      );
                    } else {
                      // Navigate to path B for odd index
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TeamsPlayer(initialTabIndex: 1)),
                      );
                    }
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: MediaQuery.of(context).size.width * 0.09,
                    child: Image(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    team_name[index],
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_right),
                );
              },
              // onTap: () {
              //   // setState(() {
              //   //   _selected = index;
              //   //   index == 0 ? infovisible = false : infovisible = true;
              //   // });
              // },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                ),
                child: Text(
                  "Tournament",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: MediaQuery.of(context).size.width * 0.08,
                child: Image(
                  image: AssetImage("images/chess1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "Indian Premium League,2023",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_right),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.16,
                    child: Text(
                      leading_names[index],
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.cyan,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    title_name[index],
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold),
                  ),
                  shape: Border(
                    bottom: BorderSide(
                      color: Colors.cyan,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
