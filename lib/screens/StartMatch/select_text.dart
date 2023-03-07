import 'package:flutter/material.dart';
import 'package:games4u/screens/StartMatch/selectplayer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:games4u/screens/StartMatch/startmatch.dart';
import 'package:games4u/screens/invite.dart';

class SelectText extends StatelessWidget {
  const SelectText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: const Text("Start Match"),
          backgroundColor: Color(0xFF00A4E4),
          leading: IconButton(
            iconSize: 25,
            icon: const Icon(Icons.arrow_back),
            onPressed: (() => Navigator.pop(context)),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ));
              },
              child: Text(
                "Invite",
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              padding: EdgeInsets.only(right: 25),
              alignment: Alignment.centerRight,
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ));
              },
              icon: const Icon(
                FontAwesomeIcons.userGroup,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tournamenttext(context),
            SizedBox(
              height: 50,
            ),
            individualtext(context),
          ],
        ));
  }

  Widget tournamenttext(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 55.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color(0xFF00A4E4),
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => StartMatch(),
          ));
        },
        child: const Text(
          "TOURNAMENT",
          style: TextStyle(
            color: Color(0xFF00A4E4),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget individualtext(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 54.0,
            vertical: 55.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color(0xFF00A4E4),
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SelectPlayer(),
          ));
        },
        child: const Text(
          "INDIVIDUAL",
          style: TextStyle(
            color: Color(0xFF00A4E4),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
