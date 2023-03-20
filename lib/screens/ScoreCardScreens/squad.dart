import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TeamsPlayer extends StatelessWidget {
  final int initialTabIndex;

  const TeamsPlayer({Key? key, required this.initialTabIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        initialIndex: initialTabIndex,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            bottom: const TabBar(
              unselectedLabelColor: Colors.red,
              labelColor: Colors.blue,
              indicatorColor: Colors.black87,
              tabs: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Madhya Pradesh",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Gujarat",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            title: const Text(
              'Squad',
              style: TextStyle(
                fontSize: 22,
                fontFamily: "Gilroy",
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              FirstSquad(),
              Secondsquad(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstSquad extends StatefulWidget {
  const FirstSquad({super.key});

  @override
  State<FirstSquad> createState() => _FirstSquadState();
}

class _FirstSquadState extends State<FirstSquad> {
  List squad_images = [
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
  ];

  List<String> squad_name = [
    "Rohit Sharma",
    "Dhawan",
    "Virat Kohli",
    "Suresh Raina",
    "Yuvraj Singh",
    "Dhoni",
    "Axar Patel",
    "Jadeja",
    "Ashwin",
    "Bumrah",
    "Bhuvaneswar Kumar",
  ];
  List<String> squad_subtitle = [
    "Batsman",
    "Batsman",
    "Batsman",
    "Batsman Allrounder",
    "Batsman Allrounder",
    "WK-Batsman",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowler",
    "Bowler",
  ];

  List bench_images = [
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
  ];

  List<String> bench_name = [
    "Gill",
    "Axar Patel",
    "Jadeja",
    "Ashwin",
    "Bumrah",
    "Bhuvaneswar Kumar",
  ];
  List<String> bench_subtitle = [
    "Batsman",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowler",
    "Bowler",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.065,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(squad_images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      squad_name[index],
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      squad_subtitle[index],
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700),
                    ),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.cyan,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                },
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child: Center(
                  child: Text(
                    "Bench",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.060,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(bench_images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      bench_name[index],
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      bench_subtitle[index],
                      style:const TextStyle(
                          fontSize: 12,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700),
                    ),
                    shape:const Border(
                      bottom: BorderSide(
                        color: Colors.cyan,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Secondsquad extends StatefulWidget {
  const Secondsquad({super.key});

  @override
  State<Secondsquad> createState() => _SecondsquadState();
}

class _SecondsquadState extends State<Secondsquad> {
  // ignore: non_constant_identifier_names
  List squad2_images = [
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
  ];

  List<String> squad2_name = [
    "Rohit Sharma",
    "Dhawan",
    "Virat Kohli",
    "Suresh Raina",
    "Yuvraj Singh",
    "Dhoni",
    "Axar Patel",
    "Jadeja",
    "Ashwin",
    "Bumrah",
    "Bhuvaneswar Kumar",
  ];
  List<String> squad2_subtitle = [
    "Batsman",
    "Batsman",
    "Batsman",
    "Batsman Allrounder",
    "Batsman Allrounder",
    "WK-Batsman",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowler",
    "Bowler",
  ];

  List bench2_images = [
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
  ];

  List<String> bench2_name = [
    "Gill",
    "Axar Patel",
    "Jadeja",
    "Ashwin",
    "Bumrah",
    "Bhuvaneswar Kumar",
  ];
  List<String> bench2_subtitle = [
    "Batsman",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowling Allrounder",
    "Bowler",
    "Bowler",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.065,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(squad2_images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      squad2_name[index],
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      squad2_subtitle[index],
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700),
                    ),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.cyan,
                        width: 1.2,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                },
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child: Center(
                  child: Text(
                    "Bench",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.060,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(bench2_images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      bench2_name[index],
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      bench2_subtitle[index],
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w700),
                    ),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.cyan,
                        width: 1.2,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
