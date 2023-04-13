import 'package:flutter/material.dart';

import 'create_tour.dart';

class Tour1New extends StatefulWidget {
  const Tour1New({super.key});

  @override
  State<Tour1New> createState() => _Tour1NewState();
}

class _Tour1NewState extends State<Tour1New> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text("Tournament"),
        backgroundColor: const Color(0xFF00A4E4),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Which role you are ???..",
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: "gilroy",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: height * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: height * 0.11,
                      width: width / 3,
                      child: button(
                        "ORGANISER",
                      )),
                  SizedBox(
                      height: height * 0.11,
                      width: width / 3,
                      child: button("SCORER")),
                ],
              ),
              SizedBox(height: height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: height * 0.11,
                      width: width / 3,
                      child: button("PLAYER")),
                  SizedBox(
                      height: height * 0.11,
                      width: width / 3,
                      child: button("NONE")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(
    String text,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TourNew()),
        );
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: "Gilroy",
          color: Color(0xFF00A4E4),
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
