import 'package:flutter/material.dart';
import 'package:games4u/screens/Subscrption/subscription.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  List<bool> checkedItems = List.generate(6, (_) => false);
  List<String> selectedItems = [];
  bool _buttonEnabled = false;
  // bool _selectAll = false;
  // bool get value => true;
  void _toggleSelectAll(bool value) {
    setState(() {
      // _selectAll = value;
      checkedItems = List.generate(6, (_) => value);
    });
  }

  void _onCheckboxValueChanged(bool value, int index) {
    setState(() {
      checkedItems[index] = value;
      _buttonEnabled = checkedItems.contains(true);
    });
  }

  void _buttonPressed() {
    // Perform action when button is pressed
    // Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }

  List<String> names = [
    "Sai Vishal",
    "Anagha",
    "Hari",
    "Akshansh",
    "Shivam",
    "Lal"
  ];

  final List _images = [
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1),
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                          child: const Image(
                            image: AssetImage("images/ribbon.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    top: MediaQuery.of(context).size.height * 0.015,
                    left: MediaQuery.of(context).size.height * 0.1,
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'INVITE FRIENDS',
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close_rounded),
                      iconSize: MediaQuery.of(context).size.height * 0.035,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Container(
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xFF00A4E4),
                      width: 1.3,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      filled: true,
                      contentPadding: const EdgeInsets.all(12),
                      suffixIcon: IconButton(
                        color: const Color(0xFF00A4E4),
                        onPressed: (() {}),
                        icon: const Icon(Icons.search),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.01),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF00A4E4),
                            width: 1.2,
                          ),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: MediaQuery.of(context).size.width * 0.07,
                            child: Image(
                              image: AssetImage(_images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Center(
                            child: Text(
                              names[index],
                              style: const TextStyle(
                                color: Colors.black87,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          trailing: Checkbox(
                            activeColor: const Color(0xFF00A4E4),
                            value: checkedItems[index],
                            onChanged: (value) {
                              setState(() {
                                _onCheckboxValueChanged(value!, index);
                                checkedItems[index] = value;
                                if (value) {
                                  selectedItems.add(names[index]);
                                } else {
                                  selectedItems.remove(names[index]);
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 0)),
                      backgroundColor: _buttonEnabled
                          ? MaterialStateProperty.all<Color>(
                              const Color(0xFF00A4E4))
                          : MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 214, 210, 210),
                            ),
                      foregroundColor: _buttonEnabled
                          ? MaterialStateProperty.all<Color>(Colors.white)
                          : MaterialStateProperty.all<Color>(Colors.black54),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: _buttonEnabled ? _buttonPressed : null,
                    child: const Text(
                      "INVITE",
                      style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
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
}
