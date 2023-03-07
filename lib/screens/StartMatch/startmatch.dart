import 'package:flutter/material.dart';

class StartMatch extends StatefulWidget {
  const StartMatch({super.key});

  @override
  State<StartMatch> createState() => _StartMatchState();
}

class _StartMatchState extends State<StartMatch> {
  final TextEditingController _gameName = TextEditingController();
  final TextEditingController _groundLocation = TextEditingController();
  final TextEditingController _dateAndtime = TextEditingController();
  DateTime dateTime = DateTime(2023, 02, 21, 5, 30);

  @override
  Widget build(BuildContext context) {
    final _hours = dateTime.hour.toString().padLeft(2, '0');
    final _minutes = dateTime.minute.toString().padLeft(2, '0');

    var _formkey;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: const Text("Start a Match"),
          backgroundColor: Color(0xFF00A4E4),
          centerTitle: true,
          // leading: IconButton(
          //   iconSize: 25,
          //   icon: const Icon(Icons.arrow_back),
          //   onPressed: (() => Navigator.pop(context)),
          // ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Wonders Players",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          firstplayer(context),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "Select Team Players",
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        child: Image.asset("images/vspicupdate.png"),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Beo Sports",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          secondplayer(context),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              "Select Team Players",
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  FormUI(
                      _gameName, "Game Name", "Game Name", () => null, false),
                  FormUI(
                      _dateAndtime,
                      "Date & Time",
                      "${dateTime.day}/${dateTime.month}/${dateTime.year} & ${dateTime.hour}:${dateTime.minute}",
                      pickDateTime,
                      true),
                  Venue(_groundLocation, "Venue", "Venue", () => null, false),
                  // datetimefiled(context),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Match Officials",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                              child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("images/football.png"),
                          )),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Umpire",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("images/cricket.jpg"),
                          )),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "ScoreBoard",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              child: CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage("images/unknownpic.png"),
                          )),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "Others",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        extendBody: true,
        bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Color(0xFF00A4E4)),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Toss',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF00A4E4),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget firstplayer(BuildContext context) {
    return Container(
        //  alignment: Alignment.center,
        // padding: EdgeInsets.all(15),
        child: const CircleAvatar(
      radius: 45,
      backgroundImage: AssetImage("images/backgrd.jpg"),
    ));
  }

  Widget secondplayer(BuildContext context) {
    return Container(
        // alignment: Alignment.bottomCenter,
        // padding: EdgeInsets.all(15),
        child: const CircleAvatar(
      radius: 45,
      backgroundImage: AssetImage("images/chess1.jpg"),
    ));
  }

  Widget FormUI(
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
            padding: const EdgeInsets.only(
                top: 10.0, left: 10.0, right: 10.0, bottom: 10),
            child: SingleChildScrollView(
              child: TextFormField(
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Color(0xFF00A4E4),
                decoration: InputDecoration(
                  labelText: labeltext,
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     borderSide: BorderSide(color: Color(0xFFEDEDED))),
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

  Widget Venue(
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
            padding: const EdgeInsets.only(
                top: 10.0, left: 10.0, right: 10.0, bottom: 10),
            child: SingleChildScrollView(
              child: TextFormField(
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Color(0xFF00A4E4),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.location_on),
                  ),
                  labelText: labeltext,
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0xFF00A4E4))),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     borderSide: BorderSide(color: Color(0xFFEDEDED))),
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

  Widget datetimefiled(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: pickDateTime,
          child: Text(
              "${dateTime.year}/${dateTime.month}/${dateTime.day} ${dateTime.hour} : ${dateTime.minute}"),
        ),
      ],
    );
  }

  Future pickDateTime() async {
    DateTime? date = await pickDate();
    if (date == null) return;

    TimeOfDay? time = await pickTime();
    if (time == null) return;

    final dateTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
    setState(() => this.dateTime = dateTime);
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );

  Future<TimeOfDay?> pickTime() => showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute));
}
