import 'package:flutter/material.dart';
import 'package:games4u/screens/signup.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ForgotpassScreen extends StatelessWidget {
  const ForgotpassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A4E4),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 300),
            child: IconButton(
                // alignment: const Alignment(),
                iconSize: 30,
                color: Colors.black,
                icon: const Icon(Icons.arrow_back),
                onPressed: (() => Navigator.pop(context))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(
              'images/lock.png',
              height: 80,
              width: 80,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Trouble logging in ?',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 40, right: 30),
            child: Text(
              "Enter your email and we'll send you a link to get back into your account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: 260,
              // height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 2),
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.w00,
                ),
                decoration: const InputDecoration(
                  hintText: ' Enter some text',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: null,
              child: Text(
                'Send logic link',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "OR",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  }),
                  child: const Text(
                    'Create new account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ))),
        ],
      ),
    );
  }
}
