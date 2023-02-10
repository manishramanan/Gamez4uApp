import 'package:flutter/material.dart';
import 'package:games4u/screens/login.dart';
import 'package:games4u/screens/signup.dart';
//import 'package:games4u/logger.dart' as console;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final ButtonStyle style = ElevatedButton.styleFrom(
    //   textStyle: const TextStyle(
    //     fontSize: 20,
    //     backgroundColor: Colors.white,
    //     color: Colors.black,
    //     height: 1.5,
    //   ),
    // );
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/welcomepic.png"), fit: BoxFit.cover),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 80, right: 10),
            child: Text(
              'WELCOME',
              style: TextStyle(
                //fontWeight: FontWeight.normal,
                fontSize: 25,
                decoration: TextDecoration.none,
                color: Colors.white,
                //height: 15,
                fontFamily: 'EB Garamond',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 20),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // minimumSize: const Size.fromHeight(10.0),
                  backgroundColor: Colors.white,
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                }),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(52, 15, 52, 15),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //  maximumSize: const Size.fromHeight(2),
                      // minimumSize: Size.fromWidth(5),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    }),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                      child: const Text(
                        'SIGNUP',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ))),
          ),

          // ElevatedButton(
          //   style: style,
          //   onPressed: null,
          //   child: const Text('LOGIN'),
          // ),

          // ElevatedButton(
          //   style: style,
          //   onPressed: null,
          //   child: const Text('SIGNUP'),
          // ),
        ],
      ),
    );
  }
}
