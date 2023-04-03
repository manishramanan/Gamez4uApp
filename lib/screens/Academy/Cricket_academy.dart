import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Cricket_academy1.dart';

class CrickAcademyPage extends StatefulWidget {
  const CrickAcademyPage({super.key});

  @override
  State<CrickAcademyPage> createState() => _CrickAcademyPageState();
}

class _CrickAcademyPageState extends State<CrickAcademyPage> {
  final TextStyle myStyle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 13,
    color: Colors.black,
  );
  final TextStyle myStyle1 = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 18.5,
    color: Colors.black,
  );
  final TextStyle myStyle2 = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 9.4,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width * 0.035;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: const Text("Cricket Academy"),
          backgroundColor: const Color(0xFF00A4E4),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Abcd(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ExamplePage(),
                    ));
                  },
                  text1: Text("INDIAN CRICKET ACADEMY", style: myStyle1),
                  text2: Text("3.0 ", style: myStyle),
                  text3: Text("\t (230) \t", style: myStyle),
                  text4: Text("CRICKET CLUB", style: myStyle),
                  text5: Text(
                      "800.mi-140 13th main road, near Janatha market,Rajaji nagar-560034",
                      style: myStyle2),
                  text6: Text("Hours : ", style: myStyle),
                  text7: Text("6:30 to 10:30", style: myStyle),
                  text8: Text("Days : ", style: myStyle),
                  text9: Text("Mon to Sun", style: myStyle),
                  text10: Text("Phone : ", style: myStyle),
                  text11: Text("9876543210", style: myStyle),
                  text12: Text("Website", style: myStyle2),
                  text13: Text("Directions", style: myStyle2),
                  text14: Text("Enquiry", style: myStyle2),
                ),
                Abcd(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => Quiz4Page(),
                    // ));
                  },
                  text1: Text("LEADING CRICKET ACADEMY", style: myStyle1),
                  text2: Text("3.0 ", style: myStyle),
                  text3: Text("\t (230) \t", style: myStyle),
                  text4: Text("CRICKET CLUB", style: myStyle),
                  text5: Text(
                      "800.mi-140 13th main road, near Janatha market,Rajaji nagar-560034",
                      style: myStyle2),
                  text6: Text("Hours : ", style: myStyle),
                  text7: Text("6:00 to 10:00", style: myStyle),
                  text8: Text("Days : ", style: myStyle),
                  text9: Text("Mon to Sun", style: myStyle),
                  text10: Text("Phone : ", style: myStyle),
                  text11: Text("9876543210", style: myStyle),
                  text12: Text("Website", style: myStyle2),
                  text13: Text("Directions", style: myStyle2),
                  text14: Text("Enquiry", style: myStyle2),
                ),
                Abcd(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => QuizWelcome(),
                    // ));
                  },
                  text1: Text("MASTER CRICKET ACADEMY", style: myStyle1),
                  text2: Text("3.0 ", style: myStyle),
                  text3: Text("\t (230) \t", style: myStyle),
                  text4: Text("CRICKET CLUB", style: myStyle),
                  text5: Text(
                      "800.mi-140 13th main road, near Janatha market,Rajaji nagar-560034",
                      style: myStyle2),
                  text6: Text("Hours : ", style: myStyle),
                  text7: Text("5:30 to 10:00", style: myStyle),
                  text8: Text("Days : ", style: myStyle),
                  text9: Text("Mon to Sun", style: myStyle),
                  text10: Text("Phone : ", style: myStyle),
                  text11: Text("9876543210", style: myStyle),
                  text12: Text("Website", style: myStyle2),
                  text13: Text("Directions", style: myStyle2),
                  text14: Text("Enquiry", style: myStyle2),
                ),
                Abcd(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => QuizWelcome(),
                    // ));
                  },
                  text1: Text("INTERNATONAL CRICKET ALLIANCE", style: myStyle1),
                  text2: Text("3.0 ", style: myStyle),
                  text3: Text("\t (230) \t", style: myStyle),
                  text4: Text("CRICKET CLUB", style: myStyle),
                  text5: Text(
                      "800.mi-140 13th main road, near Janatha market,Rajaji nagar-560034",
                      style: myStyle2),
                  text6: Text("Hours : ", style: myStyle),
                  text7: Text("6:00 to 10:30", style: myStyle),
                  text8: Text("Days : ", style: myStyle),
                  text9: Text("Mon to Sun", style: myStyle),
                  text10: Text("Phone : ", style: myStyle),
                  text11: Text("9876543210", style: myStyle),
                  text12: Text("Website", style: myStyle2),
                  text13: Text("Directions", style: myStyle2),
                  text14: Text("Enquiry", style: myStyle2),
                ),
                Abcd(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => QuizWelcome(),
                    // ));
                  },
                  text1: Text("EAGLE CRICKET ACADEMY", style: myStyle1),
                  text2: Text("3.0 ", style: myStyle),
                  text3: Text("\t (230) \t", style: myStyle),
                  text4: Text("CRICKET CLUB", style: myStyle),
                  text5: Text(
                      "800.mi-140 13th main road, near Janatha market,Rajaji nagar-560034",
                      style: myStyle2),
                  text6: Text("Hours", style: myStyle),
                  text7: Text("6:30 to 10:30", style: myStyle),
                  text8: Text("Days", style: myStyle),
                  text9: Text("Mon to Sun", style: myStyle),
                  text10: Text("Phone", style: myStyle),
                  text11: Text("9876543210", style: myStyle),
                  text12: Text("Website", style: myStyle2),
                  text13: Text("Directions", style: myStyle2),
                  text14: Text("Enquiry", style: myStyle2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Abcd extends StatelessWidget {
  const Abcd({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.text7,
    required this.text8,
    required this.text9,
    required this.text10,
    required this.text11,
    required this.text12,
    required this.text13,
    required this.text14,
    required this.onPressed,
  });

  final Text text1;
  final Text text2;
  final Text text3;
  final Text text4;
  final Text text5;
  final Text text6;
  final Text text7;
  final Text text8;
  final Text text9;
  final Text text10;
  final Text text11;
  final Text text12;
  final Text text13;
  final Text text14;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.010),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.014),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Color(0xFF00A4E4)),
                ),
              ),
              onPressed: onPressed,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text1,
                      Row(
                        children: [
                          text2,
                          StarRating(rating: 3),
                          text3,
                          text4,
                        ],
                      ),
                      text5,
                      Row(
                        children: [
                          text6,
                          text7,
                        ],
                      ),
                      Row(
                        children: [
                          text8,
                          text9,
                        ],
                      ),
                      Row(
                        children: [
                          text10,
                          text11,
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: MediaQuery.of(context).size.width * 0.035,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.globe,
                        size: MediaQuery.of(context).size.height * 0.025,
                        color: Color(0xFF00A4E4),
                      ),
                    ),
                    text12,
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.directions,
                        color: Color(0xFF00A4E4),
                      ),
                    ),
                    text13,
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.phone,
                        color: Color(0xFF00A4E4),
                      ),
                    ),
                    text14,
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(Icons.star,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        } else if (index < rating) {
          return Icon(Icons.star_half,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        } else {
          return Icon(Icons.star_border,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        }
      }),
    );
  }
}
