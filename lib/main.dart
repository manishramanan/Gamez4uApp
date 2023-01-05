import 'package:flutter/material.dart';
//import 'package:games4u/screens/login.dart';
import 'package:games4u/screens/mainscreen.dart';
//import 'package:games4u/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogoScreen(),
      debugShowCheckedModeBanner: false ,
    );
  }
}
