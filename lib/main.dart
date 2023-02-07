import 'package:flutter/material.dart';
// import 'package:games4u/screens/login.dart';
// import 'package:games4u/screens/signup.dart';
// import 'package:games4u/screens/mainscreen.dart';
// import 'package:games4u/screens/welcome.dart';
// import 'package:games4u/screens/signup_phone.dart';
// import 'package:games4u/screens/login_phone.dart';
// import 'package:games4u/screens/Forgotpass.dart';
import 'package:games4u/screens/profile.dart';
import 'package:games4u/shared/menu_drawer.dart';
import 'package:games4u/screens/homescreen.dart';

//import 'package:games4u/screens/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
