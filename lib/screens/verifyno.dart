import 'package:flutter/material.dart';

class VerifyNum extends StatelessWidget {
  const VerifyNum({super.key});

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
            padding: EdgeInsets.only(left: 50, top: 10),
            child: Text(
              'Verify Your            '
              'Phone Number',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 50),
            child: Text(
              "Add your phone number ,we'll send you a verification code",
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
