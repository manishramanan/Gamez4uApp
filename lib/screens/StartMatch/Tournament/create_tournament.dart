import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class CreateTourmPage extends StatefulWidget {
  const CreateTourmPage({super.key});

  @override
  State<CreateTourmPage> createState() => _CreateTourmPageState();
}

class _CreateTourmPageState extends State<CreateTourmPage> {
  final TextEditingController _startdate = TextEditingController();
  final TextEditingController _enddate = TextEditingController();
  final TextEditingController _tournamentName = TextEditingController();
  final TextEditingController _organiserName = TextEditingController();
  final TextEditingController _organiserNumber = TextEditingController();
  final TextEditingController _townName = TextEditingController();
  final TextEditingController _groundName = TextEditingController();
  final TextEditingController _groundlocation = TextEditingController();
  final TextEditingController _entryfee = TextEditingController();
  final TextEditingController _lastentrydate = TextEditingController();
  final TextEditingController _gameName = TextEditingController();
  final TextEditingController _noteams = TextEditingController();
  final TextEditingController _playerteam = TextEditingController();
  final TextEditingController _category = TextEditingController();

  File? _imageFile;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text("Create Tournament"),
        backgroundColor: Color(0xFF00A4E4),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              //overflow: Overflow.visible,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: height * 0.25,
                  child: GestureDetector(
                    child: ClipRect(
                      child: _imageFile != null
                          ? Image.file(
                              _imageFile!,
                              fit: BoxFit.cover,
                            )
                          : Image(
                              image: AssetImage("images/backgrd.jpg"),
                              fit: BoxFit.cover,
                            ),
                    ),
                    onTap: () {
                      _getImage();
                    },
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add Tournament Banner\t',
                          style: TextStyle(
                            fontSize: width * 0.055,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.camera,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: height * 0.015,
                  bottom: height * -0.06,
                  child: GestureDetector(
                    child: CircleAvatar(
                      radius: width * 0.165,
                      backgroundColor: Color.fromARGB(255, 76, 69, 69),
                      backgroundImage:
                          _image != null ? FileImage(_image!) : null,
                      child: _image == null
                          ? Icon(
                              Icons.person,
                              size: height * 0.055,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.25, top: height * 0.01),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 123, 113, 113),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_photo_alternate,
                      size: height * 0.04,
                      color: Colors.white,
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
              ),
            ),
            // Form(child: SingleChildScrollView(child: Column(
            //   children: [

            //   ],
            // )))
            formbig(_tournamentName, "Tournament Name*", "Tournament Name",
                () => null, false),
            formbig(_organiserName, "Organiser Name*", "Organiser Name",
                () => null, false),
            formbigorg(_organiserNumber, "Organiser Number*",
                "Organiser Number", () => null, false),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                dateUI(_startdate, "Start Date", "Enter Start Date",
                    () => {datePicker(_startdate)}, true),
                dateUI(_enddate, "End Date", "Enter End Date",
                    () => {datePicker(_enddate)}, true),
              ],
            ),
            formbig(_townName, "Town/City*", "Town/City", () => null, false),
            formbig(
                _groundName, "Ground Name*", "Ground Name", () => null, false),
            formbiglocation(_groundlocation, "Ground Location*",
                "Ground Location", () => null, false),

            Row(
              children: [
                formbignumber(
                    _entryfee, "Entry Fee*", "Entry Fee", () => null, false),
                dateUI(_lastentrydate, "Last Entry Date", "Last Entry Date",
                    () => {datePicker(_enddate)}, true),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Match info ',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
            formbig(_gameName, "Game Name*", "Game Name", () => null, false),
            Row(
              children: [
                formbignumber(
                    _noteams, "No of teams*", "No of teams", () => null, false),
                formbignumber(_playerteam, "Players per team*",
                    "Players per team", () => null, false),
              ],
            ),
            formbig(_category, "Tournament Category*", "Tournament Category",
                () => null, false),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 213, 207, 207),
                      minimumSize: Size(width * 0.4, height * 0.06),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          fontSize: height * 0.025, color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF00A4E4),
                      minimumSize: Size(width * 0.4, height * 0.06),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: height * 0.025),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> datePicker(TextEditingController controller) async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      initialDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (pickDate != null) {
      print(pickDate);
      String formattedDate = DateFormat('yMd').format(pickDate);
      print(formattedDate);
      setState(() {
        controller.text = formattedDate;
      });
    } else {
      print('Date is not selected');
    }
  }

  Widget dateUI(
    TextEditingController? formcontroller,
    String? labeltext,
    String? hinttext,
    Function()? tap,
    bool boolvalue,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: TextFormField(
                controller: formcontroller,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Color(0xFF00A4E4),
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: const Color(0xFF00A4E4),
                        )),
                    fillColor: const Color(0xFFEDEDED),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: const Color(0xFF00A4E4),
                        )),
                    hintText: hinttext,
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    labelText: labeltext,
                    suffixIcon: const Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    )),
                onTap: tap,
                readOnly: boolvalue,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget formbig(
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
        Padding(
            padding: EdgeInsets.all(6),
            child: SingleChildScrollView(
              child: TextFormField(
                // controller: _textEditingController,

                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Color(0xFF00A4E4),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  // errorText: _validate ? 'Field can\'t be empty' : null,

                  labelText: labeltext,
                  alignLabelWithHint: true,
                  //  contentPadding: EdgeInsets.only(left: 10.0),
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: hinttext,
                  fillColor: const Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }

  Widget formbiglocation(
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
        Padding(
            padding: EdgeInsets.all(6),
            child: SingleChildScrollView(
              child: TextFormField(
                // controller: _textEditingController,

                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Color(0xFF00A4E4),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  // errorText: _validate ? 'Field can\'t be empty' : null,
                  suffixIcon: Icon(Icons.location_on),
                  labelText: labeltext,
                  alignLabelWithHint: true,
                  //  contentPadding: EdgeInsets.only(left: 10.0),
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: hinttext,
                  fillColor: const Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }

  Widget formbigorg(
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
        Padding(
            padding: EdgeInsets.all(6),
            child: SingleChildScrollView(
              child: TextFormField(
                // controller: _textEditingController,

                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Color(0xFF00A4E4),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  // errorText: _validate ? 'Field can\'t be empty' : null,

                  labelText: labeltext,
                  alignLabelWithHint: true,
                  //  contentPadding: EdgeInsets.only(left: 10.0),
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: hinttext,
                  fillColor: const Color(0xFFEDEDED),
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }

  Widget formbignumber(
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
        Padding(
            padding: EdgeInsets.all(6),
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                child: TextFormField(
                  // controller: _textEditingController,

                  readOnly: boolvalue,
                  controller: formcontroler,
                  cursorColor: Color(0xFF00A4E4),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // errorText: _validate ? 'Field can\'t be empty' : null,

                    labelText: labeltext,
                    alignLabelWithHint: true,
                    //  contentPadding: EdgeInsets.only(left: 10.0),
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Color(0xFF00A4E4))),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: hinttext,
                    fillColor: const Color(0xFFEDEDED),
                    filled: true,
                  ),
                  onTap: tap,
                ),
              ),
            ))
      ],
    );
  }
}
