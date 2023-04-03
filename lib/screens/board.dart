import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Scoreboard extends StatelessWidget {
  List<Map<String, dynamic>> scores ;

   Scoreboard({super.key, required this.scores});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            children: scores.map((score) {
              return Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(score['name']),
                    SizedBox(height: 8.0),
                    Text(score['score'].toString()),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
