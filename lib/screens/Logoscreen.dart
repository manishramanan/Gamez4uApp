import 'package:flutter/material.dart';
import 'package:games4u/screens/Welcome/scroll.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  void _navigateToNextPage() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TwoScreenScroll()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backgrd.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.4),
        child: Container(
          height: height * 0.1,
          width: width * 0.1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/logopic1.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
