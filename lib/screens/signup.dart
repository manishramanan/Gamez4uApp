import 'package:flutter/material.dart';
import 'package:games4u/screens/login.dart';

import 'PhoneNumber/Verify_phone.dart';
import 'Welcome/selectgames.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool passwordVisible = true;
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

  // void _register() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/signupbackgrd.png'),
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
                  onPressed: (() => Navigator.pop(context)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  'SIGNUP',
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
                  margin: const EdgeInsets.all(14),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            right: 152.0,
                          ),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          child: Align(
                            alignment: Alignment.topCenter,
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
                              onChanged: (value) => setState(() {
                                isButtonEnabled = false;
                              }),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 130.0, top: 20),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              height: 2,
                            ),
                          ),
                        ),
                        Container(
                          width: 230,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TextFormField(
                              controller: passwordController,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: const Icon(
                                  Icons.key,
                                  color: Colors.black,
                                ),
                                suffixIcon: IconButton(
                                  color: Colors.black,
                                  icon: Icon(
                                    passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                                alignLabelWithHint: false,
                                filled: true,
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
                        const SizedBox(height: 18.0),
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
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 50),
                              backgroundColor:
                                  isButtonEnabled ? Colors.white : Colors.grey,
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 18,
                                color: isButtonEnabled
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 14, left: 10),
                              child: Text(
                                "Have an account ?",
                                style: TextStyle(
                                  height: 0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: TextButton(
                                onPressed: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                }),
                                child: const Text(
                                  'LogIn',
                                  style: TextStyle(
                                    // height: 3,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.only(top: 10),
                            //   child: Icon(
                            //     Icons.person_add,
                            //     size: 17,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            onPressed: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginNumber()));
                            }),
                            child: const Text(
                              'Signup with Mobile number ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Expanded(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
