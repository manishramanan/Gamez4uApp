import 'package:flutter/material.dart';
import 'package:games4u/screens/ForgotPassword/Forgotpass.dart';

import 'package:games4u/screens/homescreen.dart';
import 'package:games4u/screens/login_phone.dart';
import 'package:games4u/screens/signup.dart';

import 'Welcome/Thirdpage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool passwordVisibility = true;
  final textFieldController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isButtonEnabled = false;
  bool isPasswordValid = false;
  bool isEmailValid = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(_checkForm);
    passwordController.addListener(_checkForm);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _checkForm() {
    isEmailValid =
        RegExp(r"^(.+)@(.+)(\..{2,3})$").hasMatch(emailController.text);
    isPasswordValid = RegExp(r'.{8,16}').hasMatch(passwordController.text);

    if (isEmailValid && isPasswordValid) {
      setState(() => isButtonEnabled = true);
    } else {
      setState(() => isButtonEnabled = false);
    }
  }

  // void _submit() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginbackgrd.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                    iconSize: 25,
                    icon: const Icon(Icons.arrow_back),
                    onPressed: (() => Navigator.pop(context))),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 5,
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
                  //margin: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 160, top: 10),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 17,
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
                          borderRadius: BorderRadius.all(Radius.circular(22.0)),
                        ),
                        child: TextFormField(
                          controller: emailController,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 135.0, top: 18),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 17,
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
                          borderRadius: BorderRadius.all(Radius.circular(22.0)),
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: TextFormField(
                            controller: passwordController,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            obscureText: passwordVisibility,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.key,
                                color: Colors.black,
                              ),
                              suffixIcon: IconButton(
                                color: Colors.black,
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisibility = !passwordVisibility;
                                    },
                                  );
                                },
                                icon: Icon(
                                  passwordVisibility
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              alignLabelWithHint: false,
                              filled: true,
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            onChanged: (value) => setState(() {
                              isButtonEnabled =
                                  (isPasswordValid && isEmailValid)
                                      ? true
                                      : false;
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: isButtonEnabled
                              ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ThirdPage(),
                                    ),
                                  );
                                }
                              : null,
                          // onPressed: (() {
                          //   setState(() {
                          //     isButtonEnabled ? _submit : null;
                          //   });
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const HomeScreen(),
                          //     ),
                          //   );
                          // }),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 50),
                            backgroundColor:
                                isButtonEnabled ? Colors.white : Colors.grey,
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 19,
                              color:
                                  isButtonEnabled ? Colors.black : Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotpassScreen()));
                          }),
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              "Don't have an account ?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: TextButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupScreen()));
                              }),
                              child: const Text(
                                'SignUp',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPhoneScreen()));
                          }),
                          child: const Text(
                            'Login with Phone Number',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 0,
                              child: TextButton(
                                onPressed: null,
                                child: Image.asset(
                                  'images/googlepic.png',
                                  height: 29,
                                  width: 30,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: TextButton(
                                onPressed: null,
                                child: Image.asset(
                                  'images/facebookpic.png',
                                  height: 29,
                                  width: 30,
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
      ),
    );
  }
}
