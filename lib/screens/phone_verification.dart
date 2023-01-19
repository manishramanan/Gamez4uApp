import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class VerifyPhoneScreen extends StatelessWidget {
  const VerifyPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 50, right: 10, top: 10),
                child: Text(
                  'Verify your               '
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
                  "Add your phone number,we'll send you a verification code.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(42, 18, 0, 0),
                child: Material(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (value) {},
                      cursorColor: Colors.black,
                      formatInput: false,
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      inputDecoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          left: 0,
                          bottom: 15,
                        ),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 7, 0),
                child: Container(
                  width: 130.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: const Center(
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Send OTP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 50, top: 25),
                      child: Text(
                        'By providing my phone number, I hereby agree  ',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: Transform(
                  transform: Matrix4.translationValues(0.0, -3.0, 0.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'and accept the',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextButton(
                        child: const Text(
                          'Terms of Services',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 13,
                          ),
                        ),
                        onPressed: () {
                          // Perform action
                        },
                      ),
                      const Text(
                        'and',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Transform(
                  transform: Matrix4.translationValues(0.0, -12.0, 0.0),
                  child: Row(
                    children: [
                      TextButton(
                        child: const Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 13,
                          ),
                        ),
                        onPressed: () {
                          // Perform action
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "in use of this app.",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}