import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text("Invite"),
        backgroundColor: Color(0xFF00A4E4),
        centerTitle: true,
        leading: IconButton(
          iconSize: 25,
          icon: const Icon(Icons.arrow_back),
          onPressed: (() => Navigator.pop(context)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            memberstext(context),
            SizedBox(
              height: 15,
            ),
            viamail(context),
            SizedBox(
              height: 15,
            ),
            viaphone(context),
            SizedBox(
              height: 15,
            ),
            teamlink(context),
            SizedBox(
              height: 15,
            ),
            addcontact(context),
            SizedBox(
              height: 15,
            ),
            playesattime(
              context,
            )
          ],
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
          side: BorderSide(
            color: Color(0xFF00A4E4),
          ),
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: const Icon(
          Icons.people,
          color: Colors.black,
          size: 24.0,
        ),
      ),
      label: const Text(
        'Members in Beo Group',
        style: TextStyle(color: Color(0xFF00A4E4), fontSize: 16),
      ),
      onPressed: () {},
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
          side: BorderSide(
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
          side: BorderSide(
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
          side: BorderSide(
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
          side: BorderSide(
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
          side: BorderSide(
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
