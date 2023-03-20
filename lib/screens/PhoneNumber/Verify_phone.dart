import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:flutter/material.dart';

import '../OTP UPDATE/otp_1.dart';
import '../Subscrption/subscription.dart';

class LoginNumber extends StatefulWidget {
  const LoginNumber({super.key});

  @override
  State<LoginNumber> createState() => _LoginNumberState();
}

class _LoginNumberState extends State<LoginNumber> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _phoneNumberController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Verify Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontFamily: "Gilroy"),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Enter your phone number, we'll send a verification code ",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: "Gilroy"),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.03,
                    horizontal: 25),
                child: Form(
                  key: _formKey,
                  child: IntlPhoneField(
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      // border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                              color: Color(0xFF00A4E4), width: 2.0)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.8),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(width: 2.0),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    countries: const ["IN", 'US', 'CA', 'AU'],
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Color(0xFF00A4E4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ButtonTheme(
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PinCodeVerificationScreen(),
                      ));
                    },
                    child: Center(
                        child: Text(
                      "Send OTP".toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Text(
                  "By providing my phone number, I hereby agree ",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: "Gilroy"),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "and accept the \t",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: "Gilroy"),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => SubPage()));
                    // },
                    child: Text(
                      'Terms of Conditions',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Gilroy"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    "\t and",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: "Gilroy"),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SubPage()));
                    },
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Gilroy"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    "\t in use of this app.",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: "Gilroy"),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
