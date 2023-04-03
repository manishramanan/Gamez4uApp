import 'package:flutter/material.dart';

import '../profile_menu.dart/user.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _currentPassword;
  late String _newPassword;
  late String _confirmPassword;
  bool passwordVisibile1 = true;
  bool passwordVisibile2 = true;
  bool passwordVisibile3 = true;
  List myList = ["sai"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00A4E4),
        title: const Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    obscureText: passwordVisibile1,
                    decoration: InputDecoration(
                      labelText: 'Current Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              passwordVisibile1 = !passwordVisibile1;
                            },
                          );
                        },
                        icon: Icon(
                          passwordVisibile1
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    onSaved: (value) => _currentPassword = value!,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Current Password";
                      } else if (value.length < 8) {
                        return "Password must be atleast 8 characters long";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    obscureText: passwordVisibile2,
                    decoration: InputDecoration(
                      labelText: 'New Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              passwordVisibile2 = !passwordVisibile2;
                            },
                          );
                        },
                        icon: Icon(
                          passwordVisibile2
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    onSaved: (value) => _newPassword = value!,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your new password";
                      } else if (value.length < 8) {
                        return "Password must be atleast 8 characters long";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    obscureText: passwordVisibile3,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              passwordVisibile3 = !passwordVisibile3;
                            },
                          );
                        },
                        icon: Icon(
                          passwordVisibile3
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    onSaved: (value) => _confirmPassword = value!,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please confirm your new password';
                      }
                      if (value != _newPassword) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF00A4E4))),
                      child: const Text('Change Password'),
                      onPressed: () {
                        _formKey.currentState!.save();
                        if (_formKey.currentState!.validate()) {
                          // Call a function to change the password
                          //changePassword();
                          _showSuccessDialog(context);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changePassword() {
    // Call an API or a local function to change the password here
    // If the password change is successful, display a success message and navigate back
    // Otherwise, display an error message
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Password Updated"),
            //AlertDialog: Icon(Icons.one_k_plus),
            actions: <Widget>[
              TextButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                child: const Text("OK"),
              ),
            ],
          );
        });
  }
}
