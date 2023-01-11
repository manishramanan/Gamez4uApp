import 'package:flutter/material.dart';
//import 'package:games4u/screens/login.dart';
//import 'package:games4u/screens/signup.dart';

// import 'package:games4u/screens/mainscreen.dart';
// import 'package:games4u/screens/welcome.dart';
//import 'package:games4u/screens/login_update.dart';
//import 'package:games4u/screens/verifyno.dart';
// import 'package:games4u/screens/verification.dart';
import 'package:games4u/screens/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OtpVerificationPage(
        verificationId: '',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
