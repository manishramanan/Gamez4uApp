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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
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
              heading(),
              // bottomtext(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget heading() {
    return SizedBox(
      child: Image(
        image: AssetImage(
          'images/Crick.png',
        ),

        // height: 100,
        // width: 100,
      ),
    );
  }

  Widget bottomtext(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
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
