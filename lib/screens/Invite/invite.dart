import 'package:flutter/material.dart';
import 'package:games4u/screens/Invite/alert_invite.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text("Invite"),
        backgroundColor:const Color(0xFF00A4E4),
        centerTitle: true,
        leading: IconButton(
          iconSize: 25,
          icon: const Icon(Icons.arrow_back),
          onPressed: (() => Navigator.pop(context)),
        ),
      ),
      body: Padding(
        padding:const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    memberstext(context),
                   const SizedBox(
                      height: 15,
                    ),
                    viamail(context),
                   const SizedBox(
                      height: 15,
                    ),
                    viaphone(context),
                   const SizedBox(
                      height: 15,
                    ),
                    teamlink(context),
                   const SizedBox(
                      height: 15,
                    ),
                    addcontact(context),
                   const SizedBox(
                      height: 15,
                    ),
                    playesattime(
                      context,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget memberstext(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side:const BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      icon: const Padding(
        padding: EdgeInsets.only(right: 5),
        child: Icon(
          Icons.people,
          color: Colors.black,
          size: 24.0,
        ),
      ),
      label: const Text(
        'Members in Beo Group',
        style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
      ),
      onPressed: (() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyDialog()));
      }),
    );
  }

  Widget viamail(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 64.0,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      icon: const Icon(
        Icons.mail,
        color: Colors.black,
        size: 24.0,
      ),
      label: const Text(
        'Add via Mail ',
        style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
      ),
      onPressed: () {},
    );
  }

  Widget viaphone(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 27.0,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      icon: const Icon(
        Icons.phone,
        color: Colors.black,
        size: 24.0,
      ),
      label: const Text(
        'Add via Phone Number',
        style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
      ),
      onPressed: () {},
    );
  }

  Widget teamlink(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      icon: const Icon(
        Icons.link,
        color: Colors.black,
        size: 24.0,
      ),
      label: const Text(
        'Add via Team Link ',
        style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
      ),
      onPressed: () {},
    );
  }

  Widget addcontact(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      icon: const Icon(
        Icons.contacts,
        color: Colors.black,
        size: 24.0,
      ),
      label: const Text(
        'Add from Contacts',
        style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
      ),
      onPressed: () {},
    );
  }

  Widget playesattime(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      icon: const Icon(
        Icons.people,
        color: Colors.black,
        size: 24.0,
      ),
      label: const Text(
        'Add Players at a Time',
        style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
      ),
      onPressed: () {},
    );
  }
}
