import 'package:flutter/material.dart';
//import 'package:games4u/screens/Academy/Cricket_acadamey1.dart';
import 'package:games4u/screens/Quiz/quizquestions.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../shared/menu_drawer.dart';

class QuizFinalPage extends StatefulWidget {
  const QuizFinalPage({super.key});

  @override
  State<QuizFinalPage> createState() => _QuizFinalPageState();
}

class _QuizFinalPageState extends State<QuizFinalPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(136, 170, 158, 158),
        extendBodyBehindAppBar: true,
        drawer: const Drawer(
          child: MenuDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/quiz1pic.png'),
              fit: BoxFit.contain,
              opacity: 0.1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.1),
                child: CircularPercentIndicator(
                  radius: 68.0,
                  lineWidth: 20,
                  percent: 0.6,
                  header: Text(
                    "Vishal",
                    style: TextStyle(
                        fontSize: width * 0.065,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  center: CircleAvatar(
                    backgroundImage: AssetImage("images/unknownpic.png"),
                    radius: width * 0.16,
                  ),
                  footer: Text(
                    "70%",
                    style: TextStyle(
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  backgroundColor: Colors.white60,
                  progressColor: Colors.green,
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.04),
                        child: Container(
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.cyan),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.04, right: width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Questions",
                                  style: TextStyle(
                                      fontSize: width * 0.045,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(
                                      fontSize: width * 0.046,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: Container(
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.cyan),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.04, right: width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Correct",
                                  style: TextStyle(
                                      fontSize: width * 0.046,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "07",
                                  style: TextStyle(
                                      fontSize: width * 0.046,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.02, bottom: height * 0.02),
                        child: Container(
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.cyan),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.04, right: width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Wrong",
                                  style: TextStyle(
                                      fontSize: width * 0.044,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "03",
                                  style: TextStyle(
                                      fontSize: width * 0.046,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: height * 0.04),
                        child: Container(
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.cyan),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.04, right: width * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Score",
                                  style: TextStyle(
                                      fontSize: width * 0.046,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "205",
                                  style: TextStyle(
                                      fontSize: width * 0.046,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TwoDialogBox(),
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: Colors.white,
                      //     minimumSize: Size(width * 4, height * 0.07),
                      //     elevation: 10,
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(15.0)),
                      //   ),
                      //   onPressed: () {
                      //     showDialog(
                      //       context: context,
                      //       builder: (BuildContext context) {
                      //         return AlertDialog(
                      //           title: const Center(
                      //               child: Text('OOPS!!',
                      //                   style: TextStyle(
                      //                     fontWeight: FontWeight.bold,
                      //                   ))),
                      //           content: Column(
                      //             mainAxisSize: MainAxisSize.min,
                      //             children: <Widget>[
                      //               Text(
                      //                 'Above 70% can download',
                      //                 style: TextStyle(
                      //                     fontSize: 15,
                      //                     fontWeight: FontWeight.bold),
                      //               ),
                      //               Text('the certificate',
                      //                   style: TextStyle(
                      //                       fontSize: 15,
                      //                       fontWeight: FontWeight.bold)),
                      //             ],
                      //           ),
                      //         );
                      //       },
                      //     );
                      //   },
                      //   child: const Text(
                      //     "DOWNLOAD CERTIFICATE",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         color: Colors.green,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
