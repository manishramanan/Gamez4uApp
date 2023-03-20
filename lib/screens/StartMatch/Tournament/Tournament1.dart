import 'package:flutter/material.dart';
import 'package:games4u/screens/Invite/invite.dart';

import '../../history.dart';
import 'create_tournament.dart';

class TournamentPage extends StatelessWidget {
  const TournamentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: const Text("Tournament"),
          backgroundColor: Color(0xFF00A4E4),
          leading: IconButton(
            iconSize: 25,
            icon: const Icon(Icons.arrow_back),
            onPressed: (() => Navigator.pop(context)),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 80),
              child: Text(
                "Which role you are ???..",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  organisertext(context),
                  scorertext(context),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                playertext(context),
                nonetext(context),
              ],
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ));
  }

  Widget organisertext(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 35.0,
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
            builder: (context) => CreateTourmPage(),
          ));
        },
        child: const Text(
          "ORGANISER",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF00A4E4),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget scorertext(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 35.0,
            vertical: 35.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color(0xFF00A4E4),
            ),
          ),
        ),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => SelectPlayer(),
          // ));
        },
        child: const Text(
          "SCORER",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF00A4E4),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget playertext(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 39.0,
            vertical: 36.0,
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
            builder: (context) => HistoryPage(),
          ));
        },
        child: const Text(
          "PLAYER",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF00A4E4),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget nonetext(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 21.0,
            vertical: 28.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color(0xFF00A4E4),
            ),
          ),
        ),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => SelectPlayer(),
          // ));
        },
        child: const Text(
          "NONE OF THE \n ABOVE",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF00A4E4),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
