import 'package:flutter/material.dart';
import 'package:games4u/screens/MyGames/leaderboard.dart';
import 'package:games4u/screens/MyGames/matches1.dart';
import 'package:games4u/screens/MyGames/my_games.dart';
import 'package:games4u/screens/OTP%20UPDATE/otp_1.dart';
import 'package:games4u/screens/Password%20Change/changepassword.dart';
import 'package:games4u/screens/PhoneNumber/Verify_phone.dart';
import 'package:games4u/screens/Quiz/quizquestions.dart';
import 'package:games4u/screens/ScoreCardScreens/scoredetails.dart';
import 'package:games4u/screens/StartMatch/Tournament/Tournament1.dart';
import 'package:games4u/screens/MyGames/create_team.dart';
import 'package:games4u/screens/StartMatch/Tournament/create_tournament.dart';
import 'package:games4u/screens/StartMatch/selectA.dart';
import 'package:games4u/screens/StartMatch/select_text.dart';
import 'package:games4u/screens/StartMatch/selectplayer.dart';
import 'package:games4u/screens/StartMatch/startmatch.dart';
import 'package:games4u/screens/ScoreCardScreens/Scoreboard_tab.dart';
import 'package:games4u/screens/Invite/alert_invite.dart';
import 'package:games4u/screens/Welcome/Thirdpage.dart';
import 'package:games4u/screens/Welcome/second.dart';
import 'package:games4u/screens/board.dart';
import 'package:games4u/screens/history.dart';
import 'package:games4u/screens/Invite/invite.dart';
import 'package:games4u/screens/login.dart';
import 'package:games4u/screens/profile_menu.dart/editprofile.dart';
import 'package:games4u/screens/Welcome/scroll.dart';
import 'package:games4u/screens/profile_menu.dart/user.dart';
import 'package:games4u/screens/signup.dart';
import 'package:games4u/screens/Logoscreen.dart';
import 'package:games4u/screens/upload_video.dart';
import 'package:games4u/screens/welcome.dart';
import 'package:games4u/screens/ForgotPassword/Forgotpass.dart';
import 'package:games4u/screens/ForgotPassword/otp_mail.dart';
import 'package:games4u/screens/profile_menu.dart/profile.dart';
import 'package:games4u/screens/Welcome/Firstpage.dart';
import 'package:games4u/screens/Welcome/selectgames.dart';
import 'package:games4u/screens/ScoreCardScreens/youtube.dart';
import 'package:games4u/shared/password_update.dart ';
import 'package:games4u/shared/menu_drawer.dart';
import 'package:games4u/shared/customform.dart';

import 'screens/homescreen_new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeNew(),
      debugShowCheckedModeBanner: false,
    );
  }
}
