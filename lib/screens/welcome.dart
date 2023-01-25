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
            image: AssetImage("images/logo.jpg"), fit: BoxFit.cover),
      ),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 250, top: 150),
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
            ),
          ),
          Container(
            width: 260.0,
            height: 60.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Center(
                child: TextButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ))),
          ),
          Container(
            height: 40,
          ),
          Container(
            width: 260.0,
            height: 60.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Center(
                child: TextButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    }),
                    child: const Text(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ))),
          )
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
