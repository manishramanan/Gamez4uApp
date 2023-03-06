import 'package:flutter/material.dart';
import 'package:games4u/screens/welcome.dart';

import 'Welcome/Firstpage.dart';

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
        MaterialPageRoute(builder: (context) => const ImageFirst()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.only(bottom: 0, top: 300),
        child: Container(
          height: 100,
          width: 100,
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
