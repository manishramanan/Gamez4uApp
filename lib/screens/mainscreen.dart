import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

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
      child: Center(
        child: Container(
          height: 180,
          width: 180,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/logo123.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
