import 'package:flutter/material.dart';
import 'package:games4u/screens/login.dart';
import 'package:games4u/screens/signup.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/welcomepic.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.1),
                  child: const Text(
                    'WELCOME',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily: 'Gilroy',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.22,
                        vertical: height * 0.02,
                      ),
                      // minimumSize: const Size.fromHeight(10.0),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.2,
                        vertical: height * 0.02,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    }),
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
