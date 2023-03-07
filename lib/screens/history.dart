import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final BoxDecoration myDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 6,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  );
  final TextStyle myStyle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 15,
  );
  final TextStyle myStyle1 = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 13,
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        toolbarHeight: height * 0.15,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "History",
              style: TextStyle(
                  fontSize: height * 0.028,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Gilroy"),
            ),
            CircleAvatar(
              backgroundImage: const AssetImage("images/unknownpic.png"),
              radius: width * 0.12,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                decoration: myDecoration,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Personal Details",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Gilroy"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                width: double.infinity,
                height: height * 0.21,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  image: DecorationImage(
                    image: AssetImage('images/soccer.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.25,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Name", style: myStyle),
                          Text("\t\t:", style: myStyle),
                          Text("Vishal", style: myStyle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("\tAge", style: myStyle),
                          Text(":", style: myStyle),
                          Text("22", style: myStyle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Height", style: myStyle),
                          Text(":", style: myStyle),
                          Text("181m", style: myStyle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Weight", style: myStyle),
                          Text(":", style: myStyle),
                          Text("72kg", style: myStyle),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                width: double.infinity,
                decoration: myDecoration,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Games",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Gilroy"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                width: double.infinity,
                height: height * 0.22,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  image: DecorationImage(
                    image: AssetImage('images/soccer.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.25,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 8,
                      percent: 0.4,
                      center: Text("40%"),
                      footer: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Cricket",
                          style: myStyle1,
                        ),
                      ),
                      backgroundColor: Colors.white60,
                      progressColor: Colors.blue,
                    ),
                    CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 8,
                      percent: 0.6,
                      center: Text("60%"),
                      footer: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Hockey",
                          style: myStyle1,
                        ),
                      ),
                      backgroundColor: Colors.white60,
                      progressColor: Colors.blue,
                    ),
                    CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 8,
                      percent: 0.8,
                      center: Text("80%"),
                      footer: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Basketball",
                          style: myStyle1,
                        ),
                      ),
                      backgroundColor: Colors.white60,
                      progressColor: Colors.blue,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                width: double.infinity,
                decoration: myDecoration,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "Statistics",
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Gilroy"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                width: double.infinity,
                height: height * 0.22,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  image: DecorationImage(
                    image: AssetImage('images/soccer.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.25,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Wins", style: myStyle1),
                        SizedBox(
                          width: width * 0.6,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.white,
                            valueColor: AlwaysStoppedAnimation(Colors.cyan),
                            value: 0.7,
                          ),
                        ),
                        Text("70%", style: myStyle1),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Draw", style: myStyle1),
                        SizedBox(
                          width: width * 0.6,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.white,
                            valueColor: AlwaysStoppedAnimation(Colors.cyan),
                            value: 0.1,
                          ),
                        ),
                        Text("10%", style: myStyle1),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Loss", style: myStyle1),
                        SizedBox(
                          width: width * 0.6,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.white,
                            valueColor: AlwaysStoppedAnimation(Colors.cyan),
                            value: 0.2,
                          ),
                        ),
                        Text("20%", style: myStyle1),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
