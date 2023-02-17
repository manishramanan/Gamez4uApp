import 'package:flutter/material.dart';
import 'package:games4u/screens/Welcome/Secondpage.dart';

class ImageFirst extends StatefulWidget {
  const ImageFirst({super.key});

  @override
  State<ImageFirst> createState() => _ImageFirstState();
}

class _ImageFirstState extends State<ImageFirst> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            //padding: const EdgeInsets.all(25.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Diagonalpic.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                text(),
                heading(),
                bottomtext(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget heading() {
    return Container(
      // padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      height: 320,
      alignment: Alignment.centerLeft,
      child: const Image(
        image: AssetImage(
          'images/first123.png',
        ),
        // height: 100,
        // width: 100,
      ),
    );
  }

  Widget text() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          ' CHAMPIONS \n KEEP \n PLAYING \n UNTIL THEY \n RIGHT',
          style: TextStyle(
              color: Colors.cyan, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget bottomtext(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.only(top: 10, right: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 17.0,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ImageSet(),
          ));
        },
        child: const Text(
          "SKIP",
          style: TextStyle(color: Colors.cyan, fontSize: 20),
        ),
      ),
    );
  }
}
