import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:games4u/shared/otpgen1.dart';
import 'package:games4u/shared/password_update.dart';

class OtpEmailPage extends StatefulWidget {
  const OtpEmailPage({super.key});

  @override
  State<OtpEmailPage> createState() => _OtpEmailPageState();
}

class _OtpEmailPageState extends State<OtpEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            iconSize: 25,
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: (() => Navigator.pop(context))),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Enter 4 Digit Code',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Enter the 4 digit code that you \n \t \t received on your email.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            OtpField(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't get code?"),
                Text(
                  "Resend OTP",
                  style: TextStyle(
                    color: Colors.cyan,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdatePasswordPage()));
                }),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Submit",
                      style: TextStyle(
                        fontSize: 22,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
