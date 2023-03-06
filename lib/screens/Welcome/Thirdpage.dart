import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:games4u/screens/homescreen.dart';
import 'package:games4u/screens/welcome.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final _selectgames = TextEditingController();

  List<String> businessVertical = [
    "CRICKET",
    "HOCKEY",
    "BASKET BALL",
    "KABADDI",
    "VOLLEY BALL",
    "CHESS",
    "CARROM",
    "BADMINTON",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Material(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Diagonalpic.png'),
                  fit: BoxFit.cover)),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              heading(),
              // SizedBox(
              //   height: 100,
              // ),
              FormUIDropDown(_selectgames, "Select Games", "Select Games",
                  showbusinessVerticaldd, true)
            ],
          )),
        ),
      ),
    ));
  }

  int? bvgroup;

  showbusinessVerticaldd() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return Container(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Center(
                          child: Text(
                            "SELECT GAMES",
                            style: TextStyle(
                              fontFamily: 'Sfpro',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 4.0,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.4,
                      ),
                      child: ListView.builder(
                        itemCount: businessVertical.length,
                        itemBuilder: (context, index) {
                          return RadioListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 5.0),
                            title: Text(
                              businessVertical[index],
                              style: TextStyle(
                                fontFamily: 'Sfpro',
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            value: index,
                            groupValue: bvgroup,
                            onChanged: (value) {
                              setState(() {
                                //print(index);
                                print(businessVertical[index]);
                                bvgroup = index;
                                _selectgames.text = businessVertical[index];
                              });
                            },
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ));
                                },
                                child: const Text(
                                  'OK',
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0)))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
          );
        });
  }

  Widget heading() {
    return Container(
      // alignment: Alignment.top,
      child: const Image(
        image: AssetImage(
          'images/logopic1.png',
        ),
        // height: 250.0,
        // width: 250.0,
      ),
    );
  }

  Widget FormUIDropDown(
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
            padding:
                EdgeInsets.only(top: 12.0, left: 10.0, right: 10.0, bottom: 80),
            child: SingleChildScrollView(
              child: TextFormField(
                readOnly: boolvalue,
                controller: formcontroler,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                  labelText: labeltext,
                  labelStyle: TextStyle(color: Colors.blue),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: hinttext,
                  fillColor: Colors.white,
                  filled: true,
                ),
                onTap: tap,
              ),
            ))
      ],
    );
  }
}
