import 'package:flutter/material.dart';
import 'package:games4u/screens/MyGames/my_games.dart';
import 'package:games4u/screens/StartMatch/selectA.dart';

class SelectPlayer extends StatefulWidget {
  @override
  _SelectPlayerState createState() => _SelectPlayerState();
}

class _SelectPlayerState extends State<SelectPlayer> {
  bool _isButtonVisible = false;

  void _showButtons() {
    setState(() {
      _isButtonVisible = true;
    });
  }

  void _hideButtons() {
    setState(() {
      _isButtonVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text("Select a Player"),
        backgroundColor: Color(0xFF00A4E4),
        centerTitle: true,
        leading: IconButton(
          iconSize: 25,
          icon: const Icon(Icons.arrow_back),
          onPressed: (() => Navigator.pop(context)),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Player A",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            firstplayer(context),
            GestureDetector(
              onTap: _showButtons,
              child: Center(child: navigatortext(context)),
            ),
            Container(
              height: 130,
              child: Image(
                image: AssetImage(
                  "images/vspicupdate.png",
                ),
              ),
            ),
            Text(
              "Player B",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            secondplayer(context),
            GestureDetector(
              onTap: _showButtons,
              child: Center(child: navigatortext(context)),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Visibility(
        visible: _isButtonVisible,
        child: BottomAppBar(
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 55,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onPressed: _hideButtons,
                child: Text(
                  'NOT NOW',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF00A4E4),
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00A4E4),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 59.0,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlayerAteam(),
                  ));
                },
                child: const Text(
                  'NEXT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget firstplayer(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: const CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage("images/unknown12.jpg"),
        ));
  }

  Widget secondplayer(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(15),
        child: const CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage("images/unknownpic.png"),
        ));
  }

  Widget navigatortext(BuildContext context) {
    return const Text(
      "Select Team Players",
      style: TextStyle(
          fontSize: 20, color: Color(0xFF00A4E4), fontWeight: FontWeight.bold),
    );
  }
}
