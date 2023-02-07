import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
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
            flex: 3,
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
                    Text(
                      'Faiz',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.white,
              alignment: Alignment.topLeft,
              child: ProfileInput(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInput extends StatefulWidget {
  const ProfileInput({super.key});

  @override
  State<ProfileInput> createState() => _ProfileInputState();
}

class _ProfileInputState extends State<ProfileInput> {
  final TextEditingController name = TextEditingController();
  final TextEditingController emailId = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController dateOfBirth = TextEditingController();
  var arrIndex = ['1', '2', '3'];
  @override
  Widget build(BuildContext context) {
    //String selectedGender;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name *',
                  textAlign: TextAlign.start,
                ),
                TextField(
                  controller: name,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: 'Enter Your Name'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Id *',
                  textAlign: TextAlign.start,
                ),
                TextField(
                  controller: emailId,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'Enter Your Email Id'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number ',
                  textAlign: TextAlign.start,
                ),
                TextField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.phone,
                  decoration:
                      InputDecoration(hintText: 'Enter Your Phone Number'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date of Birth ',
                  textAlign: TextAlign.start,
                ),
                TextField(
                  controller: dateOfBirth,
                  keyboardType: TextInputType.datetime,
                  decoration:
                      InputDecoration(hintText: 'Enter Your Date of birth'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gender *',
                  textAlign: TextAlign.start,
                ),
                Row(
                  children: [
                    Text('Male'),
                    Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: (value) {
                          setState(() {});
                          value = 0;
                        }),
                    Text('Female'),
                    Radio(value: '', groupValue: 0, onChanged: (int) {}),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'SAVE',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
