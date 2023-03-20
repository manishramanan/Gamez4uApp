import 'package:flutter/material.dart';

import 'scroll.dart';
import 'Thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
            heading(),
            text(),
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
      height: height * 0.4,
      //width: width * 0.5,
      alignment: Alignment.center,
      child: Image(
        image: AssetImage(
          'images/sai.png',
        ),
      ),
    );
  }

  Widget text() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.02),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [Color(0xFF00A4E4), Color.fromARGB(255, 64, 70, 247)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds);
          },
          child: Text(
            '\t A \n WINNER \n NEVER \n STOPS \n TRYING',
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
      padding: EdgeInsets.only(top: height * 0.15, right: width * 0.05),
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
            builder: (context) => ThirdScreen(),
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
