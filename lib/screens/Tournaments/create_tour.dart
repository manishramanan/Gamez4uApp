import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:games4u/model/tourn_model.dart';
import 'package:http/http.dart' as http;

class TourNew extends StatefulWidget {
  const TourNew({super.key});

  @override
  State<TourNew> createState() => _TourNewState();
}

class _TourNewState extends State<TourNew> {
  File? _imageFile;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    // ignore: deprecated_member_use
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

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

  final _formKey = GlobalKey<FormState>();

  final _tourname = TextEditingController();
  final _orgname = TextEditingController();
  final _orgnumber = TextEditingController();
  final _stdate = TextEditingController();
  final _ltdate = TextEditingController();
  final _cityname = TextEditingController();
  final _grdname = TextEditingController();
  final _grdloc = TextEditingController();
  final _etyfee = TextEditingController();
  final _lstfee = TextEditingController();
  final _gamename = TextEditingController();
  final _notms = TextEditingController();
  final _playertm = TextEditingController();
  final _tourcatg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Tournament"),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.32,
              width: width,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: height * 0.24,
                    child: GestureDetector(
                      child: ClipRect(
                        child: _imageFile != null
                            ? Image.file(
                                _imageFile!,
                                fit: BoxFit.cover,
                              )
                            : const Image(
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
                          const Icon(
                            Icons.camera,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    bottom: 2,
                    child: GestureDetector(
                      child: CircleAvatar(
                        radius: width * 0.16,
                        backgroundColor: const Color.fromARGB(255, 76, 69, 69),
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
                  Positioned(
                    left: width * 0.22,
                    bottom: height * 0,
                    child: CircleAvatar(
                      radius: width * 0.05,
                      backgroundColor: const Color.fromARGB(255, 123, 113, 113),
                      child: IconButton(
                        alignment: Alignment.center,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_photo_alternate,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: width,
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          tour1(
                            _tourname,
                            TextInputType.text,
                            const Icon(null),
                            "Tournament Name*",
                            "Tournament Name",
                            false,
                          ),
                          const SizedBox(height: 10),
                          tour1(
                            _orgname,
                            TextInputType.text,
                            const Icon(null),
                            "Organiser Name*",
                            "Organiser Name",
                            false,
                          ),
                          const SizedBox(height: 10),
                          tour1(
                            _orgnumber,
                            TextInputType.number,
                            const Icon(null),
                            "Organiser Number*",
                            "Organiser Number",
                            false,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width * 0.47,
                                child: tour2(
                                  _stdate,
                                  TextInputType.number,
                                  const Icon(Icons.calendar_month,
                                      color: Colors.black),
                                  "Start Date*",
                                  "",
                                  () => {datePicker(_stdate)},
                                  true,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.47,
                                child: tour2(
                                  _ltdate,
                                  TextInputType.number,
                                  const Icon(Icons.calendar_month,
                                      color: Colors.black),
                                  "End Date*",
                                  "",
                                  () => {datePicker(_ltdate)},
                                  true,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          tour1(
                            _cityname,
                            TextInputType.text,
                            const Icon(null),
                            "Town/City*",
                            "Town/City",
                            false,
                          ),
                          const SizedBox(height: 10),
                          tour1(
                            _grdname,
                            TextInputType.text,
                            const Icon(null),
                            "Ground Name*",
                            "Ground Name",
                            false,
                          ),
                          const SizedBox(height: 10),
                          tour1(
                            _grdloc,
                            TextInputType.text,
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                )),
                            "Ground Location*",
                            "Ground Location",
                            false,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width * 0.47,
                                child: tour2(
                                  _etyfee,
                                  TextInputType.number,
                                  const Icon(Icons.calendar_month,
                                      color: Colors.black),
                                  "Entry Fee*",
                                  "",
                                  () => {datePicker(_etyfee)},
                                  true,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.47,
                                child: tour2(
                                    _lstfee,
                                    TextInputType.number,
                                    const Icon(Icons.calendar_month,
                                        color: Colors.black),
                                    "Last Entry Fee*",
                                    "",
                                    () => {datePicker(_lstfee)},
                                    true),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "Match info",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "gilroy",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          tour1(
                            _gamename,
                            TextInputType.text,
                            const Icon(null),
                            "Game Name*",
                            "Game Name",
                            false,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width * 0.47,
                                child: tour1(
                                  _notms,
                                  TextInputType.number,
                                  const Icon(null),
                                  "No of teams*",
                                  "No of teams",
                                  false,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.47,
                                child: tour1(
                                    _playertm,
                                    TextInputType.number,
                                    const Icon(null),
                                    "Players per Team*",
                                    "Players per Team",
                                    false),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          tour1(
                            _tourcatg,
                            TextInputType.text,
                            const Icon(null),
                            "Tournament Category*",
                            "Tournament Category",
                            false,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: SizedBox(
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
                                    Addtourm tour = Addtourm(
                                      name: _tourname,
                                      id: _tourcatg.text,
                                      startDate: _stdate,
                                      endDate: _ltdate,
                                      entryFee: _etyfee,
                                      //noOfParticipants: int.parse(_playertm.text),
                                      noOfParticipants:
                                          int.parse(_playertm.text),
                                      participantId: _notms,
                                      sportId: _orgnumber.text,
                                    );
                                    _saveTour(tour);
                                  }
                                },
                                child: const Text(
                                  'SAVE',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Gilroy"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveTour(Addtourm tour) async {
    final response = await http.post(
      Uri.parse(
          "https://beosports-webapi.onrender.com/api/1/TournamentMasterAndDetails/add-tournament"),
      headers: {
        "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
        "Content-type": "application/json",
        "Access-Control-Allow-Origin": "*",
      },
      //body: json.encode(data.toJson()),
      body: json.encode({
        "name": "sports tournament",
        "logoPath":
            "https://www.beosports.com/assets/static_img/sports/tenns.jpg",
        "bannerPath": "www.bannerimg.com",
        "sportId": "872743b9-1920-4df4-9368-a8a6b012a81f",
        "noOfParticipants": 2,
        "participantId": "{}",
        "startDate": "2023-03-20T00:00:00",
        "endDate": "2023-03-21T00:00:00",
        "entryFee": 800,
        "latitude": 133.9,
        "longitude": -134.003
      }),
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);

      print(responseBody);
    } else {
      print('API call failed with status code ${response.statusCode}');
    }
  }

  Widget tour1(
    TextEditingController? formcontroler,
    TextInputType? keytype,
    Widget? suffixicon,
    String? labeltext,
    String? hinttext,
    bool boolvalue,
  ) {
    return TextFormField(
      readOnly: boolvalue,
      keyboardType: keytype,
      controller: formcontroler,
      cursorColor: const Color(0xFF00A4E4),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field can't be empty";
        }
        return null;
      },
      decoration: InputDecoration(
        // errorText: _validate ? 'Field can\'t be empty' : null,
        labelText: labeltext,
        suffixIcon: suffixicon,
        alignLabelWithHint: true,
        //  contentPadding: EdgeInsets.only(left: 10.0),
        labelStyle: const TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Color(0xFF00A4E4))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Color(0xFF00A4E4))),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: hinttext,
        fillColor: const Color(0xFFEDEDED),
        filled: true,
      ),
    );
  }

  Widget tour2(
    TextEditingController? formcontroler,
    TextInputType? keytype,
    Widget? suffixicon,
    String? labeltext,
    String? hinttext,
    Function()? ontap,
    bool boolvalue,
  ) {
    return TextFormField(
      readOnly: boolvalue,
      keyboardType: keytype,
      controller: formcontroler,
      cursorColor: const Color(0xFF00A4E4),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return "Field can't be empty";
        }
        return null;
      },
      decoration: InputDecoration(
        // errorText: _validate ? 'Field can\'t be empty' : null,
        labelText: labeltext,
        suffixIcon: suffixicon,
        alignLabelWithHint: true,
        //  contentPadding: EdgeInsets.only(left: 10.0),
        labelStyle: const TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Color(0xFF00A4E4))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Color(0xFF00A4E4))),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: hinttext,
        fillColor: const Color(0xFFEDEDED),
        filled: true,
      ),
      onTap: ontap,
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
}
