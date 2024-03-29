import 'package:flutter/material.dart';
import 'package:games4u/screens/welcome.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                heading(),
                text(),
                bottomtext(context),
                remote(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget heading() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: height * 0.1),
      alignment: Alignment.center,
      child: const Image(
        image: AssetImage(
          'images/abcde.jpg',
        ),
      ),
    );
  }

  Widget remote() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      alignment: Alignment.bottomCenter,
      child: const Image(
        image: AssetImage(
          'images/remote123.png',
        ),
      ),
    );
  }

  Widget text() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.05, top: height * 0.05),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [Color(0xFF00A4E4), Colors.green],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds);
          },
          child: Text(
            "I'M A SPADE \nYOU'RE AN OFAY \nLETS PLAY...",
            style: TextStyle(
                color: Color(0xFF00A4E4),
                fontSize: height * 0.046,
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
    return Padding(
      padding: EdgeInsets.only(top: height * 0.18),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 228, 225, 225),
          side: const BorderSide(
            width: 2.5,
            color: Colors.black,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.08,
            vertical: width * 0.04,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ));
        },
        child: const Text(
          "PLAY",
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
