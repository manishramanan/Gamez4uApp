import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final textFieldController = TextEditingController();

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginpic.jpg'),
            //image: AssetImage('images/facebookpic.png'),

            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                iconSize: 25,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  // Navigate back to the previous page
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 34,
                bottom: 20,
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 27,
                  color: Colors.white,
                  height: 3,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'Username , Email or Phone',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ),
                    Container(
                      // height: 0.1,
                      width: 230,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        // border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(22.0)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: '',

                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          // hintText: 'Enter your email',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 135.0, top: 25),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ),
                    Container(
                      width: 230,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        //border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(22.0)),
                      ),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: '',
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          // hintText: 'Enter your email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 75,
                          ),
                          Checkbox(
                            value: false,
                            onChanged: null,
                          ),
                          Text(
                            'Remember me?',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18.0),
                    Container(
                      width: 100.0,
                      height: 35.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: const Center(
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: null,
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Text(
                            "Don't have an account.",
                            style: TextStyle(
                              height: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            " SignUp ",
                            style: TextStyle(
                              // height: 3,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Icon(
                            Icons.person_add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 0,
                            child: TextButton(
                              onPressed: null,
                              child: Image.asset(
                                'images/facebookpic.png',
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: TextButton(
                              onPressed: null,
                              child: Image.asset(
                                'images/twitterpic.png',
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: TextButton(
                              onPressed: null,
                              child: Image.asset(
                                'images/ytpic.png',
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
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
          ],
        ),
      ),
    );
  }
}
