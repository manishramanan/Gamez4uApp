import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../model/subscriptionmodel.dart';
import '../../shared/menu_drawer.dart';

Future<List<Subscription>> fetchPost() async {
  final response = await http.get(
      Uri.parse(
          'https://beosports-webapi.onrender.com/api/1/SubscriptionMaster/subscriptions'),
      headers: {
        "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
        "Content-type": "application/json",
        "Access-Control-Allow-Origin": "*",
      });
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body);
    return parsed
        .map<Subscription>((json) => Subscription.fromJson(json))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class SubPage extends StatefulWidget {
  const SubPage({super.key});

  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  late Future<List<Subscription>> futurePost;

  @override
  void initState() {
    super.initState();
    futurePost = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle myStyle = const TextStyle(
      fontSize: 14,
      fontFamily: "Gilroy",
      fontWeight: FontWeight.bold,
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
            child: FutureBuilder<List<Subscription>>(
              future: futurePost,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
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
                            padding: EdgeInsets.all(width * 0.03),
                            child: Text(
                              'Days left: 15 Days',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Gilroy",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          side: const BorderSide(
                                              color: Color(0xFF00A4E4)),
                                        ),
                                        elevation: 10,
                                      ),
                                      onPressed: () {},
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(right: width * 0.1),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Trail',
                                              style: TextStyle(
                                                  fontSize: width * 0.065,
                                                  fontFamily: "Gilroy",
                                                  fontWeight: FontWeight.bold,
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
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Text(
                                              '₹ ${snapshot.data![1].price}',
                                              style: TextStyle(
                                                  fontSize: width * 0.05,
                                                  fontFamily: "Gilroy",
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xFF00A4E4)),
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
                                                fontFamily: "Gilroy",
                                                fontWeight: FontWeight.bold,
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
                                            top: height * 0.01,
                                            left: width * 0.1,
                                          ),
                                          child: Text(
                                            '₹ ${snapshot.data![2].price}',
                                            style: TextStyle(
                                                fontSize: width * 0.05,
                                                fontFamily: "Gilroy",
                                                fontWeight: FontWeight.bold,
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
                                            fontFamily: "Gilroy",
                                            fontWeight: FontWeight.bold,
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
                                        '₹ ${snapshot.data![3].price}',
                                        style: TextStyle(
                                            fontSize: width * 0.06,
                                            fontFamily: "Gilroy",
                                            fontWeight: FontWeight.bold,
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
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.bold,
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
                                  fontFamily: "Gilroy",
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
                                fontFamily: "Gilroy",
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
                                  fontFamily: "Gilroy",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
