import 'dart:async' as asink;
import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:games4u/screens/login.dart';
import 'package:http/http.dart' as http;

Future<User> fetchUser(int id) async {
  final String apiUri =
      'Gamez-Recip-1NBGOKF2RPJ41-848395906.ap-south-1.elb.amazonaws.com/api/1/UserLogin/userlogin/$id';
  final resp = await http.get(Uri.parse(apiUri));
  if (resp.statusCode == 200) {
    return User.fromJson(convert.jsonDecode(resp.body));
  } else {
    throw Exception('Failed to load user.');
  }
}

Future<User> createUser(String email, String password) async {
  const String apiUri =
      'Gamez-Recip-1NBGOKF2RPJ41-848395906.ap-south-1.elb.amazonaws.com/api/1/UserLogin/adduserlogin';
  final response = await http.post(
    Uri.parse(
      apiUri,
    ),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'x-authkey': 'uynjsykkloye679km@~556HHTrMolews',
    },
    body: convert.jsonEncode(<String, String>{
      'email': email,
      'userName': 'hello',
      'password': password,
      'token': 'qwerty123456',
      'mobile': '9876543210'
    }),
  );
  if (response.statusCode == 201) {
    return User.fromJson(convert.jsonDecode(response.body));
  } else {
    throw Exception('Failed to create user.');
  }
}

class User {
  final int id;
  final String email;
  final String uesrName;
  final String password;
  final String mobile;
  final String token;

  const User({
    required this.id,
    required this.email,
    required this.uesrName,
    required this.password,
    required this.mobile,
    required this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      uesrName: json['userName'],
      password: json['password'],
      mobile: json['mobile'],
      token: json['token'],
    );
  }
}

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
  Future<User>? futureUser;

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



  void _register() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/signuppic.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: (futureUser == null) ? buildColumn() : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: <Widget>[
        AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            iconSize: 25,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 34,
            bottom: 38,
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
            margin: const EdgeInsets.all(16.0),
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
                      borderRadius: BorderRadius.all(Radius.circular(22.0)),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TextFormField(
                        controller: emailController,
                        style: const TextStyle(
                          fontSize: 18,
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
                        validator: (value) {
                          if (!isPasswordValid == true) {
                            const Text(
                                "password should have at least one upper case, one special character and one digits");
                          }
                          return null;
                        },
                        onChanged: (value) => setState(() {
                          isButtonEnabled =
                              (isPasswordValid && isEmailValid) ? true : false;
                        }),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18.0),              
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(                     
                      onPressed: isButtonEnabled ? _register : null,

                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 50),
                        backgroundColor:
                            isButtonEnabled ? Colors.white : Colors.grey,
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 18,
                          color: isButtonEnabled ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 65, bottom: 5),
                    child: TextButton(
                      onPressed: null,
                      child: Text(
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
                    padding: const EdgeInsets.only(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 0,
                          child: TextButton(
                            onPressed: null,
                            child: Image.asset(
                              'images/googlepic.png',
                              height: 50,
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
                              height: 30,
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
    );
  }

  FutureBuilder<User> buildFutureBuilder() {
    return FutureBuilder<User>(
      future: futureUser,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var info = snapshot.data!;
          return Text(
            '${info.id}\n${info.email}\n${info.password}',
            style: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 18,
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
