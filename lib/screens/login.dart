import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  // final _formKey = GlobalKey<FormState>();
  // String? _email;
  // String? _password;
  final textFieldController = TextEditingController();

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontSize: 15,
    );
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/backgrd.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        children: const [
          Text(
            'Login',
            style: textStyle,
          ),
          Text(
            'Username',
            style: textStyle,
          ),
          // TextField(
          //   controller: textFieldController,
          // ),
          Text(
            'Password',
            style: textStyle,
          ),
          // TextField(
          //   controller: textFieldController,
          // ),
        ],
      ),
    );
  }
}
