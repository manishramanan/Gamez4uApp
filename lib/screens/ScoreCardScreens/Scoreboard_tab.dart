import 'package:flutter/material.dart';
import 'package:games4u/screens/ScoreCardScreens/scoredetails.dart';

class ScoreCardTab extends StatefulWidget {
  const ScoreCardTab({super.key});

  @override
  State<ScoreCardTab> createState() => _ScoreCardTabState();
}

class _ScoreCardTabState extends State<ScoreCardTab> {
  final TextStyle myStyle = const TextStyle(
    fontFamily: "Gilroy",
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  final TextStyle myStyle1 = const TextStyle(
    fontFamily: "Gilroy",
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          //First expansion tilt
          Theme(
            data: ThemeData().copyWith(dividerColor: Colors.cyan),
            child: ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Madhya Pradesh",
                    style: myStyle,
                  ),
                  Text(
                    "310/8",
                    style: myStyle1,
                  ),
                ],
              ),
              children: [
                HomePageScreen(),
                ListTile(
                  leading: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.012),
                        child: Column(
                          children: [
                            Text("Extras : 7"),
                            Text("xyz"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  title: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Total : 312/10(115)"),
                  ),
                ),
                BowlingScreen(),
                FallWickets(),
              ],
            ),
          ),
          //Second expansion tilt
          Theme(
            data: ThemeData().copyWith(dividerColor: Colors.cyan),
            child: ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gujarat",
                    style: myStyle,
                  ),
                  Text(
                    "200/5",
                    style: myStyle1,
                  ),
                ],
              ),
              children: [
                HomePageScreen(),
                ListTile(
                  leading: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.012),
                        child: Column(
                          children: [
                            Text("Extras : 7"),
                            Text("xyz"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  title: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Total : 312/10(115)"),
                  ),
                ),
                BowlingScreen(),
                FallWickets(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.045),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Madhya Pradesh won by 260 runs",
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 15,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
