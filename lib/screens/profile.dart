import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:games4u/shared/customform.dart';
import '../shared/menu_drawer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
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
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage('images/cricket.jpg'),
                      radius: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: MyCustomForm(),
            ),
          ),
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
