import 'package:flutter/material.dart';
import 'package:games4u/screens/phone_verification.dart';
import 'package:games4u/screens/signup.dart';

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

  // @override
  // void dispose() {
  //   textFieldController.dispose();
  //   super.dispose();
  // }

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

  void _submit() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignupScreen()));
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
                  onPressed: (() => Navigator.pop(context))),
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
                      padding: EdgeInsets.only(right: 75, top: 10),
                      child: Text(
                        'Username , Email ',
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
                            // hintText: 'Enter your email',
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          onChanged: (value) => setState(() {
                            isButtonEnabled = (isPasswordValid && isEmailValid)
                                ? true
                                : false;
                          }),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 5),
                    //   child: Row(
                    //     children: const [
                    //       SizedBox(
                    //         width: 75,
                    //       ),
                    //       Checkbox(
                    //         value: false,
                    //         onChanged: null,
                    //       ),
                    //       Text(
                    //         'Remember me?',
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: isButtonEnabled ? _submit : null,
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
                    // Container(
                    //   width: 100.0,
                    //   height: 35.0,
                    //   decoration: const BoxDecoration(
                    //     shape: BoxShape.rectangle,
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    //   ),
                    //   child: const Center(
                    //     child: TextButton(
                    //       onPressed: null,
                    //       child: Text(
                    //         'SUBMIT',
                    //         style: TextStyle(
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 18,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
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
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Text(
                            "Don't have an account ?",
                            style: TextStyle(
                              height: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
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
                                // height: 3,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,

                                fontSize: 17,
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
                      padding: const EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const VerifyPhoneScreen()));
                        }),
                        child: const Text(
                          'SignUp with Phone Number',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 9, bottom: 12),
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
                      padding: const EdgeInsets.only(top: 0),
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
                          // Expanded(
                          //   flex: 0,
                          //   child: TextButton(
                          //     onPressed: null,
                          //     child: Image.asset(
                          //       'images/ytpic.png',
                          //       height: 25,
                          //       width: 25,
                          //       alignment: Alignment.center,
                          //     ),
                          //   ),
                          // ),
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
