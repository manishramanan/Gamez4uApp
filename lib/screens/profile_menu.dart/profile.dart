import 'package:flutter/material.dart';
import 'package:games4u/shared/customform.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'editprofile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

enum Gender { male, female }

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;

  Future<void> _getImageFromCamera() async {
    final image = await ImagePicker().getImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    final image = await ImagePicker().getImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  Gender? gender;

  @override
  Widget build(BuildContext context) {
    //String selectedGender;
    return Scaffold(
      extendBodyBehindAppBar: true,
      // drawer: Drawer(
      //   child: MenuDrawer(),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                          'images/profilebac.png',
                          // width: 100,
                        ))),
                // color: Colors.green,
                alignment: Alignment.bottomCenter,
                // child: Text('profile image'),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: GestureDetector(
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: Color(0xFF00A4E4),
                                backgroundImage:
                                    _image != null ? FileImage(_image!) : null,
                                child: _image == null
                                    ? Icon(
                                        Icons.people,
                                        size: 55,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Choose Image'),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          ListTile(
                                            leading: Icon(Icons.camera),
                                            title: Text('Take a picture'),
                                            onTap: () {
                                              Navigator.pop(context);
                                              _getImageFromCamera();
                                            },
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.image),
                                            title: Text('Choose from gallery'),
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
                              icon: Icon(
                                Icons.add_photo_alternate,
                                size: 35,
                                color: Colors.black54,
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Choose Image'),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          ListTile(
                                            leading: Icon(Icons.camera),
                                            title: Text('Take a picture'),
                                            onTap: () {
                                              Navigator.pop(context);
                                              _getImageFromCamera();
                                            },
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.image),
                                            title: Text('Choose from gallery'),
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
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "VISHAL",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: EditableTextFormField(),
          ),

          // Expanded(
          //     flex: 2,
          //     child: Column(
          //       children: [
          //         Text(
          //           'Gender',
          //           style: TextStyle(fontSize: 16.0),
          //         ),
          //         RadioListTile<Gender>(
          //           title: const Text('Male'),
          //           value: Gender.male,
          //           groupValue: gender,
          //           onChanged: (value) {
          //             setState(() {
          //               gender = value!;
          //             });
          //           },
          //         ),
          //         RadioListTile<Gender>(
          //           title: const Text('Female'),
          //           value: Gender.female,
          //           groupValue: gender,
          //           onChanged: (value) {
          //             setState(() {
          //               gender = value!;
          //             });
          //           },
          //         ),
          //       ],
          //     )),
          // DropdownButtonFormField(
          //   decoration: InputDecoration(),
          //   value: gender,
          //   items: ['Male', 'Female'].map((gender) {
          //     return DropdownMenuItem(
          //       value: gender,
          //       child: Text(gender),
          //     );
          //   }).toList(),
          //   onChanged: (value) => setState(() => gender = value),
          //   validator: (value) {
          //     if (value == null) {
          //       return 'Please select a gender';
          //     } else {
          //       return null;
          //     }
          //   },
          // ),
        ],
      ),
    );
  }
}
