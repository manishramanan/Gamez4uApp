import 'package:flutter/material.dart';

import '../../shared/menu_drawer.dart';

class SubPage extends StatelessWidget {
  const SubPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle myStyle = const TextStyle(
      fontSize: 14,
      color: Colors.black,
    );
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF00A4E4),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF00A4E4),
                Color.fromARGB(254, 254, 254, 254),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //  IconButton(onPressed: (() {}), icon: Icon(Icons.arrow_back)),
                const Image(
                  alignment: Alignment.topCenter,
                  image: AssetImage("images/subscri_pic.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF00A4E4),
                      // border: Border.all(color: Colors.grey),
                      // borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Text(
                        'Days left: 15 Days',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.045 * width,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.03,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.06,
                                    vertical: height * 0.048,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                        color: Color(0xFF00A4E4)),
                                  ),
                                  elevation: 10,
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: EdgeInsets.only(right: width * 0.1),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Free',
                                        style: TextStyle(
                                            fontSize: width * 0.065,
                                            color: Colors.black),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: height * 0.01,
                                          bottom: height * 0.008,
                                        ),
                                        child: Text(
                                          'subscription',
                                          style: myStyle,
                                        ),
                                      ),
                                      Text(
                                        '3 months',
                                        style: TextStyle(
                                            fontSize: width * 0.05,
                                            color: const Color(0xFF00A4E4)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.06,
                                  vertical: height * 0.048,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                    color: Color(0xFF00A4E4),
                                  ),
                                ),
                                elevation: 10,
                              ),
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: width * 0.1,
                                    ),
                                    child: Text(
                                      'Yearly',
                                      style: TextStyle(
                                          fontSize: width * 0.065,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: height * 0.01,
                                      bottom: height * 0.01,
                                      left: width * 0.1,
                                    ),
                                    child: Text(
                                      'subscription',
                                      style: myStyle,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: width * 0.1,
                                    ),
                                    child: Text(
                                      '₹ 499',
                                      style: TextStyle(
                                          fontSize: width * 0.05,
                                          color: const Color(0xFF00A4E4)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.012),
                        child: Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.051,
                                vertical: height * 0.056,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      color: Color(0xFF00A4E4))),
                              elevation: 20,
                            ),
                            onPressed: () {},
                            child: Column(
                              children: [
                                Text(
                                  'Monthly',
                                  style: TextStyle(
                                      fontSize: width * 0.065,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: height * 0.01,
                                    bottom: height * 0.02,
                                  ),
                                  child: Text(
                                    'subscription',
                                    style: myStyle,
                                  ),
                                ),
                                Text(
                                  '₹ 99',
                                  style: TextStyle(
                                      fontSize: width * 0.06,
                                      color: const Color(0xFF00A4E4)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.015,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Restore Subscription",
                      style: TextStyle(
                        fontSize: width * 0.055,
                        color: const Color(0xFF00A4E4),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: height * 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Terms and Conditions",
                          style: TextStyle(
                            fontSize: width * 0.036,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        "&",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: width * 0.036,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
