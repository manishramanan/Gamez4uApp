import 'package:flutter/material.dart';
import 'package:games4u/screens/Quiz/quizfinal.dart';
import 'package:games4u/screens/Quiz/quizlogic.dart';

class Quiz4Page extends StatefulWidget {
  const Quiz4Page({super.key});

  @override
  State<Quiz4Page> createState() => _Quiz4PageState();
}

class _Quiz4PageState extends State<Quiz4Page> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.08),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                backgroundImage: const AssetImage("images/unknownpic.png"),
                radius: width * 0.16,
              ),
            ),
          ),
          Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/quiz1pic.png'),
                  fit: BoxFit.fitWidth,
                  opacity: 0.1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  _questionWidget(),
                  _answerList(),
                  _nextButton(),
                ],
              )),
        ],
      ),
    );
  }

  _questionWidget() {
    return Column(
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: TextStyle(
            color: Colors.cyan,
            fontSize: MediaQuery.of(context).size.width * 0.065,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.03,
          ),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width * 0.05,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: const Color.fromARGB(255, 46, 43, 43), width: 1.5)),
            child: Text(
              questionList[currentQuestionIndex].questionText,
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.055,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      height: MediaQuery.of(context).size.height * 0.055,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(
            side: BorderSide(
              width: 1.0,
              color: Colors.cyan,
            ),
          ),
          backgroundColor: isSelected ? Colors.cyan : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.inCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                    'Please select an answer before going to the next question')));
            return;
          }
          if (isLastQuestion) {
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
          // if (isLastQuestion) {
          //   showDialog(context: context, builder: (_) => _showScoreDialog());
          // } else {
          //   setState(() {
          //     selectedAnswer = null;
          //     currentQuestionIndex++;
          //   });
          // }
        },
        child: Text(isLastQuestion ? "Submit" : "Next"),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    if (score >= questionList.length * 0.6) {
      //pass 60
      isPassed = true;
    }
    String title = isPassed ? "Passed" : "Failed";
    return AlertDialog(
      title: Text(
        "$title | Score  is $score",
        style:
            TextStyle(color: isPassed ? Colors.greenAccent : Colors.redAccent),
      ),
      content: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const QuizFinalPage(),
            ));
            // Navigator.pop(context);
            // setState(() {
            //   currentQuestionIndex = 0;
            //   score = 0;
            //   selectedAnswer = null;
            // });
          },
          child: const Text("Next")),
    );
  }
}

// ignore: must_be_immutable
class TwoDialogBox extends StatelessWidget {
  bool isPassed = true;
  List<Question> questionList = getQuestions();
  int score = 70;

  TwoDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(width * 4, height * 0.07),
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
      onPressed: () {
        if (score >= 70) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Center(
                  child: Text(
                    'CONGRATULATIONS!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 135, 242),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Download Certificate",
                      style: TextStyle(
                          color: Colors.green,
                          // fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.download_for_offline,
                          color: Colors.blueAccent,
                          size: 40,
                        ))
                  ],
                ),
              );
            },
          );
        }
        if (score < 70) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Center(
                    child: Text('OOPS!!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ))),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Above 70% can download',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text('the certificate',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              );
            },
          );
        }
      },
      child: const Text(
        "DOWNLOAD CERTIFICATE",
        style: TextStyle(
            fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
  }
}
