import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditableTextFormField extends StatefulWidget {
  @override
  _EditableTextFormFieldState createState() => _EditableTextFormFieldState();
}

class _EditableTextFormFieldState extends State<EditableTextFormField> {
  final TextEditingController _date = TextEditingController();

  TextEditingController _field1Controller = TextEditingController();
  TextEditingController _field2Controller = TextEditingController();
  TextEditingController _field3Controller = TextEditingController();
  TextEditingController _field4Controller = TextEditingController();
  TextEditingController _field5Controller = TextEditingController();

  bool _field1Enabled = false;
  bool _field2Enabled = false;
  bool _field3Enabled = false;
  bool _field4Enabled = false;
  bool _field5Enabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTextField(
              'Name',
              _field1Controller,
              _field1Enabled,
              () {
                setState(() {
                  _field1Enabled = true;
                });
              },
              () {
                setState(() {
                  _field1Enabled = false;
                });
              },
            ),
            _buildTextField(
              'Email',
              _field2Controller,
              _field2Enabled,
              () {
                setState(() {
                  _field2Enabled = true;
                });
              },
              () {
                setState(() {
                  _field2Enabled = false;
                });
              },
            ),
            _buildTextField(
              'Phone number ',
              _field3Controller,
              _field3Enabled,
              () {
                setState(() {
                  _field3Enabled = true;
                });
              },
              () {
                setState(() {
                  _field3Enabled = false;
                });
              },
            ),
            _buildTextField(
              'Address',
              _field4Controller,
              _field4Enabled,
              () {
                setState(() {
                  _field4Enabled = true;
                });
              },
              () {
                setState(() {
                  _field4Enabled = false;
                });
              },
            ),
            _buildTextField(
              'Pincode',
              _field5Controller,
              _field5Enabled,
              () {
                setState(() {
                  _field5Enabled = true;
                });
              },
              () {
                setState(() {
                  _field5Enabled = false;
                });
              },
            ),
            DateUI(_date, "DOB", "DOB", () => {datepicker(_date)}, true),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      bool enabled, VoidCallback onTapEdit, VoidCallback onTapSave) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              enabled: enabled,
              decoration: InputDecoration(
                labelText: label,
              ),
            ),
          ),
          IconButton(
            icon: enabled ? Icon(Icons.save) : Icon(Icons.edit),
            onPressed: enabled ? onTapSave : onTapEdit,
          ),
        ],
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
                hintText: " DOB",
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
