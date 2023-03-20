import 'package:flutter/material.dart';
import 'package:games4u/screens/Welcome/second.dart';

import 'scroll.dart';
import '../welcome.dart';
import 'Thirdpage.dart';
import 'selectgames.dart';

class ImageFirst extends StatefulWidget {
  const ImageFirst({super.key});

  @override
  State<ImageFirst> createState() => _ImageFirstState();
}

class _ImageFirstState extends State<ImageFirst> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Diagonalpic.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            text(),
            heading(),
            bottomtext(context),
          ],
        ),
      ),
    );
  }

  Widget heading() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.45,
      alignment: Alignment.centerLeft,
      child: const Image(
        image: AssetImage(
          'images/first123.png',
        ),
      ),
    );
  }

  Widget text() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.08),
      child: Align(
        alignment: Alignment.topRight,
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [Color(0xFF00A4E4), Colors.black],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds);
          },
          child: Text(
            ' CHAMPIONS \n KEEP \n PLAYING \n UNTIL THEY \n RIGHT',
            style: TextStyle(
                color: Color(0xFF00A4E4),
                fontSize: height * 0.045,
                fontWeight: FontWeight.w900,
                fontFamily: "Gilroy"),
          ),
        ),
      ),
    );
  }

  Widget bottomtext(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.only(top: height * 0.01, right: width * 0.05),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.07,
            vertical: width * 0.04,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SecondPage(),
          ));
        },
        child: const Text(
          "NEXT",
          style: TextStyle(
              color: Color(0xFF00A4E4),
              fontSize: 20,
              fontFamily: "Gilroy",
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
