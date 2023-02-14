import 'dart:math';

import 'package:flutter/material.dart';
import 'package:games4u/screens/login.dart';

class UpdatePasswordPage extends StatefulWidget {
  const UpdatePasswordPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UpdatePasswordPageState createState() => _UpdatePasswordPageState();
}

class _UpdatePasswordPageState extends State<UpdatePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  late String _password;
  bool passwordVisibility = true;
  bool passwordVisible = true;

  late String _confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            iconSize: 25,
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: (() => Navigator.pop(context))),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.password_rounded,
                  size: 50,
                ),
                Icon(
                  Icons.key_outlined,
                  size: 40,
                ),
                Text(
                  '\t \t \t  New \n Credentials',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'your identity has been \n \t \t \t \t \t verified!',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan, width: 1),

                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            // borderRadius: BorderRadius.all(Radius.circular(22.0)),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            obscureText: passwordVisibility,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.cyan,
                              ),
                              suffixIcon: IconButton(
                                color: Colors.cyan,
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
                              hintText: "New Password",
                            ),
                            validator: (value) {
                              _password = value!;
                              if (value.isEmpty) {
                                return "Please Enter New Password";
                              } else if (value.length < 8) {
                                return "Password must be atleast 8 characters long";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) => _password = value!,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan, width: 1),

                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            // borderRadius: BorderRadius.all(Radius.circular(22.0)),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            obscureText: passwordVisible,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.cyan,
                              ),
                              suffixIcon: IconButton(
                                color: Colors.cyan,
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible = !passwordVisible;
                                    },
                                  );
                                },
                                icon: Icon(
                                  passwordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              alignLabelWithHint: false,
                              filled: true,
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Re-Enter New Password";
                              } else if (value != _password) {
                                return "Password must be same as above";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) => _confirmPassword = value!,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                _showSuccessDialog(context);
                                //ScaffoldMessenger.of(context).showSnackBar(
                                //   const SnackBar(content: Text('Password Updated')),
                                // );
                                // Save password to database or perform other action
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Update",
                                  style: TextStyle(
                                    fontSize: 22,
                                  )
                                  //textWidthBasis: TextWidthBasis.longestLine,
                                  ),
                            ),
                            // padding: EdgeInsets.all(18),
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
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Password Updated"),
            //AlertDialog: Icon(Icons.one_k_plus),
            actions: <Widget>[
              TextButton(
                child: Text("OK"),
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                }),
              ),
            ],
          );
        });
  }
}
