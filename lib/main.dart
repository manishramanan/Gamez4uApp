import 'package:flutter/material.dart';
import 'package:games4u/screens/MyGames/my_games.dart';
import 'package:games4u/screens/StartMatch/select_text.dart';
import 'package:games4u/screens/StartMatch/selectplayer.dart';
import 'package:games4u/screens/login.dart';
import 'package:games4u/screens/signup.dart';
import 'package:games4u/screens/mainscreen.dart';
import 'package:games4u/screens/welcome.dart';
import 'package:games4u/screens/signup_phone.dart';
import 'package:games4u/screens/login_phone.dart';
import 'package:games4u/screens/ForgotPassword/Forgotpass.dart';
import 'package:games4u/screens/ForgotPassword/otp_mail.dart';
import 'package:games4u/screens/profile_menu.dart/profile.dart';
import 'package:games4u/screens/profile_menu.dart/user_account.dart';
import 'package:games4u/screens/Welcome/Secondpage.dart';
import 'package:games4u/screens/Welcome/Firstpage.dart';
import 'package:games4u/screens/Welcome/Thirdpage.dart';

import 'package:games4u/shared/password_update.dart ';
import 'package:games4u/shared/otpgen.dart';

import 'package:games4u/shared/menu_drawer.dart';
import 'package:games4u/screens/homescreen.dart';
import 'package:games4u/shared/customform.dart';

import 'package:games4u/screens/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectText(),
      debugShowCheckedModeBanner: false,
    );
  }
}
