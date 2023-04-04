import 'package:flutter/material.dart';
import 'package:games4u/screens/ForgotPassword/otp_mail.dart';

class ForgotpassScreen extends StatelessWidget {
  const ForgotpassScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.lock,
                size: 80,
                color: Colors.cyan,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                '\t \t FORGOT \n PASSWORD',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                '\t  Enter your email for verification \n \t \t  Process , We will send 4 digit \n \t \t \t \t \t \t  code  to your email.',
                style:  TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 260,
              // height: 50,
              decoration: const BoxDecoration(
                // border: Border.all(
                //     color: Color.fromARGB(255, 175, 228, 235), width: 2),
                shape: BoxShape.rectangle,
                color: Color.fromARGB(255, 171, 231, 240),
                // borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  prefixIcon:  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  hintText: 'Email',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 176, 174, 174)),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 260,
              child: ElevatedButton(
                  // onPressed: _buttonEnabled
                  //     ? () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const OtpEmailPage(),
                  //           ),
                  //         );
                  //       }
                  //     : null,
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpEmailPage()));
                  }),
                  child: const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('NEXT',
                        style: TextStyle(
                          fontSize: 22,
                        )),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
