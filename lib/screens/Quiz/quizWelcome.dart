import 'package:flutter/material.dart';
import 'package:games4u/screens/Quiz/quizquestions.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class QuizWelcome extends StatelessWidget {
  const QuizWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          iconSize: 25,
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: (() => Navigator.pop(context)),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Welcome",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xFF00A4E4),
                  fontSize: 0.08 * width,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/quiz1pic.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.1),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00A4E4),
                  minimumSize: Size(width * 0.08, height * 0.08),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Quiz4Page(),
                  ));
                },
                child: const Text(
                  "PLAY QUIZ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
