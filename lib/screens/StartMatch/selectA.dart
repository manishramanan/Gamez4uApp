import 'package:flutter/material.dart';

class PlayerAteam extends StatefulWidget {
  const PlayerAteam({super.key});

  @override
  State<PlayerAteam> createState() => _PlayerAteamState();
}

class _PlayerAteamState extends State<PlayerAteam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: const Text("Select A Player"),
          backgroundColor: Color(0xFF00A4E4),
          centerTitle: true,
          leading: IconButton(
            iconSize: 25,
            icon: const Icon(Icons.arrow_back),
            onPressed: (() => Navigator.pop(context)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "SELECTED PLAYERS()",
                      style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(
                      " SELECT ALL",
                      style: TextStyle(
                        color: Color(0xFF00A4E4),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 20),
                    child: SizedBox(
                      width: 250,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 15),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A4E4)),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          suffixIcon:
                              Icon(Icons.search, color: Color(0xFF00A4E4)),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF00A4E4),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              boxmatter(context),
              SizedBox(
                height: 30,
              ),
              boxmatter2(context),
              SizedBox(
                height: 30,
              ),
              boxmatter3(context)
            ],
          ),
        ));
  }

  Widget boxmatter(BuildContext context) {
    return Container(
      height: 100,
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFF00A4E4),
          width: 1.5,
        ),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.black87,
        //     offset: Offset(0, 2),
        //     blurRadius: 4,
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/chess1.jpg"),
                radius: 32,
              ),
            ),
          ),
          Expanded(
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Wondors Games',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    'Game Name : Chess ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    'Player : Viswanadh',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget boxmatter2(BuildContext context) {
    return Container(
      height: 100,
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFF00A4E4),
          width: 1.5,
        ),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.black87,
        //     offset: Offset(0, 2),
        //     blurRadius: 4,
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/football.png"),
                radius: 32,
              ),
            ),
          ),
          Expanded(
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Champions ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    'Game Name : Football ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    'Player : Ronaldo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget boxmatter3(BuildContext context) {
    return Container(
      height: 100,
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFF00A4E4),
          width: 1.5,
        ),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.black87,
        //     offset: Offset(0, 2),
        //     blurRadius: 4,
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/cricket.jpg"),
                radius: 32,
              ),
            ),
          ),
          Expanded(
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Chennai Super Kings',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    'Game Name : Cricket',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  child: Text(
                    'Player : Suresh Raina ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
