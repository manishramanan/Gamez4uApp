import 'package:flutter/material.dart';
import 'package:games4u/screens/profile_menu.dart/editprofile.dart';
import 'package:intl/intl.dart';

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

enum Gender { male, female }

class MyCustomFormState extends State<MyCustomForm> {
  // Gender gender = Gender.male;
  Gender? gender;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Material(
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Enter Name'),
                  validator: (value) {
                    if (!RegExp(r"[a-z A-Z]+$").hasMatch(value!)) {
                      return 'Please enter valid Name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Enter a Email'),
                  validator: (value) {
                    if (!RegExp(r"^(.+)@(.+)(\..{2,3})$").hasMatch(value!)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Enter Phone Number'),
                  validator: (value) {
                    if (!RegExp(
                            r'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$')
                        .hasMatch(value!)) {
                      return 'Enter a valid phone number';
                    }
                    return null;
                  },
                ),
              ),
              DateUI(
                  _date, "DOB", "Enter DOB", () => {datepicker(_date)}, true),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> datepicker(TextEditingController con) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(
            2000), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2101));

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate = DateFormat('d/M/y').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      //you can implement different kind of Date Format here according to your requirement

      setState(() {
        con.text = formattedDate; //set output date to TextField value.
      });
    } else {
      print("Date is not selected");
    }
  }

  Widget DateUI(
    TextEditingController? formcontroler,
    String? formlabel,
    String? hinttext,
    Function()? tap,
    bool boolvalue,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 0, left: 10.0, right: 10.0),
          child: Text(
            "$formlabel",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0, left: 10.0, right: 10.0),
          child: SingleChildScrollView(
            child: TextFormField(
              readOnly: boolvalue,
              controller: formcontroler,
              //cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: "Enter DOB",
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                ),
              ),
              onTap: tap,
            ),
          ),
        )
      ],
    );
  }
}
