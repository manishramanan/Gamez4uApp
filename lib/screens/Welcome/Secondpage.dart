import 'package:flutter/material.dart';
import 'package:games4u/screens/Welcome/Thirdpage.dart';

class ImageSet extends StatefulWidget {
  const ImageSet({super.key});

  @override
  State<ImageSet> createState() => _ImageSetState();
}

class _ImageSetState extends State<ImageSet> {
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
                image: AssetImage('images/firstpage1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                bottomtext(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomtext(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.only(
          top: 10.0, right: 20, left: 15.0, bottom: 180.0),
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
            builder: (context) => const ThirdPage(),
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
