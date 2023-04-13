import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'package:games4u/model/gamesmodel.dart';
import 'package:http/http.dart' as http;

void _saveData(Addteams data) async {
  final response = await http.post(
    Uri.parse(
        "https://beosports-webapi.onrender.com/api/1/TeamMasterAndSportDetail/create-team"),
    headers: {
      "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
      "Content-type": "application/json",
      "Access-Control-Allow-Origin": "*",
    },
    //body: json.encode(data.toJson()),
    body: json.encode({
      "name": "SH",
      "logoImg":
          "https://api.beosports.com/assets/static_img/sports/cricket.jpg",
      "sportId": "f023da3e-e42f-4961-9bb4-d0553c5fb804",
      "extraPlayers": 3.toString(),
      "createdBy": "7b4ea0f0-9312-485c-a65e-3c76602f6ba4",
      "sportName": "cricket",
      "noOfPlayers": "11"
    }),
  );

  if (response.statusCode == 200) {
    final responseBody = jsonDecode(response.body);

    print(responseBody);
  } else {
    print('API call failed with status code ${response.statusCode}');
  }
}

class AddNew extends StatefulWidget {
  const AddNew({super.key});

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
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

  bool _isChecked = false;

  final _formKey = GlobalKey<FormState>();

  List<String> gamelist = ['item1', 'item2', 'item3'];
  String _selectedItem = '';
  List<String> playerslist = ['1', '2', '3', '4', '5'];
  String _playersItem = '';

  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              imagepath(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          controller: _controller1,
                          decoration: decoration(
                              "Team Name",
                              const Icon(
                                Icons.abc,
                                color: Colors.transparent,
                              )),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a value';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _controller2,
                          onTap: () {
                            _openDialog(context);
                          },
                          decoration: decoration("Game Name",
                              const Icon(Icons.keyboard_arrow_down)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a value';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _controller3,
                          onTap: () {
                            _openDialog2(context);
                          },
                          decoration: decoration("No of Players",
                              const Icon(Icons.keyboard_arrow_down)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a value';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _controller4,
                          decoration: decoration(
                              "Venue",
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.location_on))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a value';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
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
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00A4E4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Addteams data = Addteams(
                        name: _controller1.text,
                        sportId: _controller2.text,
                        id: _controller3.text,
                        createdBy: _controller4.text,
                      );
                      _saveData(data);
                    }
                  },
                  child: const Text(
                    'ADD TEAM',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  decoration(String text, sufixicon) {
    return InputDecoration(
      suffixIcon: sufixicon,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      labelText: text,
      alignLabelWithHint: false,
      filled: true,
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF00A4E4),
        ),
      ),
      //errorText: _validate1 ? 'Field can\'t be empty' : null,
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
    );
  }

  void _openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select an item'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: gamelist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(gamelist[index]),
                  onTap: () {
                    setState(() {
                      _selectedItem = gamelist[index];
                      _controller2.text = _selectedItem;
                    });
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('CANCEL'),
            ),
          ],
        );
      },
    );
  }

  void _openDialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select an item'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: playerslist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(playerslist[index]),
                  onTap: () {
                    setState(() {
                      _playersItem = playerslist[index];
                      _controller3.text = _playersItem;
                    });
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('CANCEL'),
            ),
          ],
        );
      },
    );
  }

  Widget imagepath() {
    return GestureDetector(
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
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 5,
              backgroundColor: const Color(0xFF00A4E4),
              backgroundImage: _image != null ? FileImage(_image!) : null,
              child: _image == null
                  ? Icon(
                      Icons.people,
                      size: MediaQuery.of(context).size.width / 5,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Icon(
              Icons.add_photo_alternate,
              size: MediaQuery.of(context).size.width / 10,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
