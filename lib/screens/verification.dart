import 'package:flutter/material.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 300),
            child: IconButton(
              // alignment: const Alignment(),
              iconSize: 30,
              color: Colors.black,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Navigate back to the previous page
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
            child: Text(
              'Phone Verification',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 50),
            child: Text(
              "OTP has been sent to your mobile number, Please enter it below",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(),
          )
        ],
      ),
    );
  }
}
