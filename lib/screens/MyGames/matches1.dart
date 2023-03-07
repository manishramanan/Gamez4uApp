import 'package:flutter/material.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  final TextStyle myStyle = const TextStyle(
    fontSize: 15,
    color: Colors.black,
  );
  final TextStyle myStyle1 = const TextStyle(
    fontSize: 14,
    color: Colors.black,
  );
  final TextStyle myStyle2 = const TextStyle(
    fontSize: 13,
    color: Color(0xFF00A4E4),
  );
  final TextStyle myStyle3 = const TextStyle(
    fontSize: 15,
    color: Color(0xFF00A4E4),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        elevation: 5, // Set the elevation value here
                        shadowColor: Colors.grey),
                    onPressed: () {},
                    child: const Text(
                      "RESULTS",
                      style: TextStyle(
                          color: Color(0xFF00A4E4),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        elevation: 5, // Set the elevation value here
                        shadowColor: Colors.grey),
                    onPressed: () {},
                    child: const Text(
                      "TODAY",
                      style: TextStyle(
                          color: Color(0xFF00A4E4),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        elevation: 5, // Set the elevation value here
                        shadowColor: Colors.grey),
                    onPressed: () {},
                    child: const Text(
                      "UPCOMING",
                      style: TextStyle(
                          color: Color(0xFF00A4E4),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Reusablecontainer(
              text1: Text(
                "T20 1 of 3 (WEST leads 3-0)",
                style: myStyle2,
              ),
              text2: Text(
                "\t West Indies",
                style: myStyle,
              ),
              text3: Text(
                "\t Bangladesh",
                style: myStyle,
              ),
              text4: Text(
                "WI won by 16 runs",
                style: myStyle3,
              ),
              text5: Text(
                "Yesterday",
                style: myStyle2,
              ),
              text6: Text(
                "206/6(20)",
                style: myStyle1,
              ),
              text7: Text(
                "190/8(20)",
                style: myStyle1,
              ),
              img1: AssetImage("images/cricket.jpg"),
              img2: AssetImage("images/cricket.jpg"),
            ),
            Reusablecontainer(
              text1: Text(
                "ODI  1 of 3 (AUS leads 3-0)",
                style: myStyle2,
              ),
              text2: Text(
                "\t England",
                style: myStyle,
              ),
              text3: Text(
                "\t Australia",
                style: myStyle,
              ),
              text4: Text(
                "AUS won by 6 Wickets",
                style: myStyle3,
              ),
              text5: Text(
                "Jan 10",
                style: myStyle2,
              ),
              text6: Text(
                "282/9(50)",
                style: myStyle1,
              ),
              text7: Text(
                "283/4(46.5)",
                style: myStyle1,
              ),
              img1: AssetImage("images/cricket.jpg"),
              img2: AssetImage("images/cricket.jpg"),
            ),
            Reusablecontainer(
              text1: Text(
                "World T20 - Super 12",
                style: myStyle2,
              ),
              text2: Text(
                "\t Bangladesh",
                style: myStyle,
              ),
              text3: Text(
                "\t Pakistan",
                style: myStyle,
              ),
              text4: Text(
                "PAK won by 6 wickets",
                style: myStyle3,
              ),
              text5: Text(
                "Jan 10",
                style: myStyle2,
              ),
              text6: Text(
                "91/9(20)",
                style: myStyle1,
              ),
              text7: Text(
                "95/4(13.5)",
                style: myStyle1,
              ),
              img1: AssetImage("images/cricket.jpg"),
              img2: AssetImage("images/cricket.jpg"),
            ),
            Reusablecontainer(
              text1: Text(
                "ODI 2 of 3 (IND leads 2-0)",
                style: myStyle2,
              ),
              text2: Text(
                "\t West Indies",
                style: myStyle,
              ),
              text3: Text(
                "\t India",
                style: myStyle,
              ),
              text4: Text(
                "IND won by 2 wickets",
                style: myStyle3,
              ),
              text5: Text(
                "Jan 09",
                style: myStyle2,
              ),
              text6: Text(
                "200(47.3)",
                style: myStyle1,
              ),
              text7: Text(
                "201/5(33.3)",
                style: myStyle1,
              ),
              img1: AssetImage("images/cricket.jpg"),
              img2: AssetImage("images/cricket.jpg"),
            ),
            Reusablecontainer(
              text1: Text(
                "ODI 1 of 3 (AUS leads 1-0)",
                style: myStyle2,
              ),
              text2: Text(
                "\t Zimbambe",
                style: myStyle,
              ),
              text3: Text(
                "\t Australia",
                style: myStyle,
              ),
              text4: Text(
                "Aus won by 5 wickets",
                style: myStyle3,
              ),
              text5: Text(
                "Jan 08",
                style: myStyle2,
              ),
              text6: Text(
                "200(47.3)",
                style: myStyle1,
              ),
              text7: Text(
                "201/5(33.3)",
                style: myStyle1,
              ),
              img1: AssetImage("images/cricket.jpg"),
              img2: AssetImage("images/cricket.jpg"),
            ),
            Reusablecontainer(
              text1: Text(
                "ODI 1 of 1 (WEST leads 1-0)",
                style: myStyle2,
              ),
              text2: Text(
                "\t West Indies",
                style: myStyle,
              ),
              text3: Text(
                "\t Bangladesh",
                style: myStyle,
              ),
              text4: Text(
                "WI won by 35 runs",
                style: myStyle3,
              ),
              text5: Text(
                "Yesterday",
                style: myStyle2,
              ),
              text6: Text(
                "193/5(20)",
                style: myStyle1,
              ),
              text7: Text(
                "158/6(20)",
                style: myStyle1,
              ),
              img1: AssetImage("images/cricket.jpg"),
              img2: AssetImage("images/cricket.jpg"),
            ),
            Reusablecontainer(
              text1: Text(
                "Test 2 of 2 (Tied 1-1) Day 4 Session 3",
                style: myStyle2,
              ),
              text2: Text(
                "\t Australia",
                style: myStyle,
              ),
              text3: Text(
                "\t Srilanka",
                style: myStyle,
              ),
              text4: Text(
                "SL won by an Innings ",
                style: myStyle3,
              ),
              text5: Text(
                "Yesterday",
                style: myStyle2,
              ),
              text6: Text(
                "206/6(20)",
                style: myStyle1,
              ),
              text7: Text(
                "190/8(20)",
                style: myStyle1,
              ),
              img1: AssetImage("images/cricket.jpg"),
              img2: AssetImage("images/cricket.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}

class Reusablecontainer extends StatelessWidget {
  const Reusablecontainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5,
      required this.text6,
      required this.text7,
      required this.img1,
      required this.img2});

  final Text text1;
  final Text text2;
  final Text text3;
  final Text text4;
  final Text text5;
  final Text text6;
  final Text text7;

  final AssetImage img1;
  final AssetImage img2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 135,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Color(0xFF00A4E4)),
            ),
          ),
          onPressed: () {
            container1();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    text1,
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: img1,
                          radius: 15,
                        ),
                        text2,
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: img2,
                          radius: 15,
                        ),
                        text3,
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: text4,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: text5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: text6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: text7,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void container1() {}
}
