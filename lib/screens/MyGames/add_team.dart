import 'dart:io';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageScreenState createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  final _gamename = TextEditingController();
  final _players = TextEditingController();
  bool _isChecked = false;

  List<String> businessVertical = [
    "CRICKET",
    "HOCKEY",
    "BASKET BALL",
  ];

  List<String> businessVertically = [
    "1",
    "2",
    "3",
    "4",
  ];
  File? _image;

  Future<void> _getImageFromCamera() async {
    // ignore: deprecated_member_use
    final image = await ImagePicker().getImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    // ignore: deprecated_member_use
    final image = await ImagePicker().getImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  final TextEditingController _textEditingController1 = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();
  final TextEditingController _textEditingController3 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      child: CircleAvatar(
                        radius: 62,
                        backgroundColor: const Color(0xFF00A4E4),
                        backgroundImage:
                            _image != null ? FileImage(_image!) : null,
                        child: _image == null
                            ? const Icon(
                                Icons.people,
                                size: 50,
                                color: Colors.white,
                              )
                            : null,
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Choose Image'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: const Icon(Icons.camera),
                                    title: const Text('Take a picture'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      _getImageFromCamera();
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.image),
                                    title: const Text('Choose from gallery'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      _getImageFromGallery();
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.add_photo_alternate,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Choose Image'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    leading: const Icon(Icons.camera),
                                    title: const Text('Take a picture'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      _getImageFromCamera();
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.image),
                                    title: const Text('Choose from gallery'),
                                    onTap: () {
                                      Navigator.pop(context);
                                      _getImageFromGallery();
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: teamFormUI(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget teamFormUI() {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: _formKey,
          child: TextFormField(
            controller: _textEditingController1,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              labelText: ' Team Name',
              alignLabelWithHint: false,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF00A4E4),
                ),
              ),
              errorText: _validate1 ? 'Field can\'t be empty' : null,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color(0xFF00A4E4),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color(0xFF00A4E4),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        FormUIDropDown(
            _gamename, "Game Name", "Game Name", showbusinessVerticaldd, true),
        SizedBox(height: 20),
        FormUIDropDown(_players, "No of Players", "No of Players",
            showbusinessVerticaldds, true),
        SizedBox(height: 20),
        TextFormField(
          controller: _textEditingController3,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_on),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            labelText: 'Venue',
            alignLabelWithHint: false,
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF00A4E4)),
            ),
            errorText: _validate3 ? 'Field can\'t be empty' : null,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Color(0xFF00A4E4),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Color(0xFF00A4E4),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const Text(
              "Add myself in team",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(height: 35),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00A4E4),
            padding: const EdgeInsets.symmetric(
              horizontal: 100.0,
              vertical: 18,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {
            // if (_formKey.currentState!.validate()) {
            //   _formKey.currentState!.save();
            //   _showSuccessDialog(context);
            //   //ScaffoldMessenger.of(context).showSnackBar(
            //   //   const SnackBar(content: Text('Password Updated')),
            //   // );
            //   // Save password to database or perform other action
            // }

            setState(() {
              _textEditingController1.text.isEmpty
                  ? _validate1 = true
                  : _validate1 = false;
              _textEditingController2.text.isEmpty
                  ? _validate2 = true
                  : _validate2 = false;
              _textEditingController3.text.isEmpty
                  ? _validate3 = true
                  : _validate3 = false;
            });
          },
          child: const Text(
            'ADD TEAM',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const LoginScreen()));
                }),
                child: Text("OK"),
              ),
            ],
          );
        });
  }

  int? bvgroup;

  showbusinessVerticaldd() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "SELECT GAMES",
                              style: TextStyle(
                                fontFamily: 'Sfpro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 4.0,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.4,
                      ),
                      child: ListView.builder(
                        itemCount: businessVertical.length,
                        itemBuilder: (context, index) {
                          return RadioListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            title: Text(
                              businessVertical[index],
                              style: const TextStyle(
                                fontFamily: 'Sfpro',
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            value: index,
                            groupValue: bvgroup,
                            onChanged: (value) {
                              setState(() {
                                //print(index);
                                print(businessVertical[index]);
                                bvgroup = index;
                                _gamename.text = businessVertical[index];
                              });
                            },
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0)))),
                                child: const Text(
                                  'OK',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          );
        });
  }

  int? bvgroups;

  showbusinessVerticaldds() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "No of Players",
                              style: TextStyle(
                                fontFamily: 'Sfpro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 4.0,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.4,
                      ),
                      child: ListView.builder(
                        itemCount: businessVertically.length,
                        itemBuilder: (context, index) {
                          return RadioListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            title: Text(
                              businessVertically[index],
                              style: const TextStyle(
                                fontFamily: 'Sfpro',
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            value: index,
                            groupValue: bvgroups,
                            onChanged: (value) {
                              setState(() {
                                //print(index);
                                print(businessVertically[index]);
                                bvgroups = index;
                                _players.text = businessVertically[index];
                              });
                            },
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0)))),
                                child: const Text(
                                  'OK',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          );
        });
  }

  Widget FormUIDropDown(
    TextEditingController? formcontroler,
    String? labeltext,
    String? hinttext,
    Function()? tap,
    bool boolvalue,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: 50,
            child: TextFormField(
              readOnly: boolvalue,
              controller: formcontroler,
              cursorColor: const Color(0xFF00A4E4),
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
                labelText: labeltext,
                // labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: hinttext,
                // fillColor: Colors.white,
                filled: true,
              ),
              onTap: tap,
            ),
          ),
        ),
      ],
    );
  }
}
