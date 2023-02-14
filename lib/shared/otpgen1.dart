import 'package:flutter/material.dart';

class OtpField extends StatefulWidget {
  @override
  _OtpFieldState createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  final List<FocusNode> focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  final List<TextEditingController> textControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void dispose() {
    focusNodes.forEach((focusNode) => focusNode.dispose());
    textControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          4,
          (index) => Container(
            width: 40.0,
            height: 60.0,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(),
            child: TextField(
              cursorColor: Colors.white,
              keyboardType: TextInputType.number,
              controller: textControllers[index],
              focusNode: focusNodes[index],
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.cyan,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.cyan,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.cyan,
                // border: InputBorder.none,
              ),
              onChanged: (value) {
                if (value.length == 1) {
                  //FocusScope.of(context).nextFocus();
                  focusNodes[index].unfocus();
                  if (index != 3) {
                    FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                  }
                }
              },
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              maxLength: 1,
              autofocus: true,
            ),
          ),
        ),
      ),
    );
  }
}
