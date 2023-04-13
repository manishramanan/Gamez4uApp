import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:games4u/model/academy_model.dart';
import '../MyGames/add.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../MyGames/leaderboard.dart';
import '../MyGames/matches1.dart';
import 'academy_new1.dart';

Future<CrickAcad> futureuser() async {
  final response = await http.get(
      Uri.parse(
          'https://beosports-webapi.onrender.com/api/1/AcademyMasterAndDetail/AcademyByid/0e94862c-0b9d-4abd-8247-cc654c2d7e4f'),
      headers: {
        "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
        "Content-type": "application/json",
      });
  if (response.statusCode == 200) {
    return CrickAcad.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class AcadNew2 extends StatefulWidget {
  const AcadNew2({super.key});

  @override
  State<AcadNew2> createState() => _AcadNew2State();
}

class _AcadNew2State extends State<AcadNew2> {
  
  final List _images = [
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
    "images/soccer.jpg",
    "images/shuttle.png",
    "images/cricket.jpg",
  ];

  List<Widget> screens = [
    const AddNew(),
    const LeaderPage(),
    const  MatchesPage(),
    const AddNew(),
    const LeaderPage(),
    const  MatchesPage(),

  ];

  late Future<CrickAcad> fetchAcad;

  @override
  void initState() {
    super.initState();
    fetchAcad = futureuser();
  }

  final TextStyle myStyle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 13,
    color: Colors.black,
  );
  final TextStyle myStyle1 = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 18.5,
    color: Colors.black,
  );
  final TextStyle myStyle2 = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 9.4,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text("Cricket Academy2"),
        centerTitle: true,
        backgroundColor: const Color(0xFF00A4E4),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.check_rounded))
        ],
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
            padding: EdgeInsets.all(height * 0.03),
            child: FutureBuilder(
              future: fetchAcad,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(snapshot.data!.name, style: myStyle1),
                      Row(
                        children: [
                          Text(snapshot.data!.averagerating.toString(),
                              style: myStyle),
                          const StarRating(rating: 3),
                          Text('\t (${snapshot.data!.noofreviews})',
                              style: myStyle),
                        ],
                      ),
                      Text(snapshot.data!.address, style: myStyle2),
                      Row(
                        children: [
                          Text("Hours : ", style: myStyle),
                          Text(
                              "${snapshot.data!.startTime} to ${snapshot.data!.endTime}",
                              style: myStyle),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Days : ", style: myStyle),
                          Text("Mon to Sun", style: myStyle),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Phone : ", style: myStyle),
                          Text(snapshot.data!.phone, style: myStyle),
                        ],
                      ),
                      textbuton(),
                      Text(
                        "About the Academy",
                        style: myStyle1,
                      ),
                      Text(
                        "The National Cricket Academy is a cricket facility of the BCCI for the purpose of developing young cricketers who have been identified as having the potential to represent the Indian cricket team. It was established in the year 2000 and is located in Chinnaswamy Cricket Stadium, Bengaluru, Karnataka in India.",
                        style: myStyle,
                      ),
                      Text(
                        "Cricket is no less than a religion in India. From chawls to plush housing societies. From schools to offices. Cricket is an important element of Indian lives. From a father’s memories to a youngster’s role model, the names of cricketers are taken in every house here. After all, cricketers are one of the most successful sportspersons. But in a competitive environment.",
                        style: myStyle,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width,
                        child: buildImages(),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const Center(child: CircularProgressIndicator());
              },
            )),
      ),
    );
  }

  Widget buildImages() => ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: _images.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            GestureDetector(
              // onTap: () => Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => screens[index]),
              // ),
              child: Container(
                width: MediaQuery.of(context).size.width / 4.5,
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: NetworkImage(_images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10)
          ],
        );
      });

  Widget button(
    Widget icons,
  ) {
    return IconButton(
      onPressed: () {},
      alignment: Alignment.center,
      constraints: const BoxConstraints(),
      splashRadius: 24,
      splashColor: Colors.grey,
      highlightColor: Colors.grey.withOpacity(0.2),
      iconSize: 24,
      color: const Color(0xFF00A4E4),
      icon: icons,
    );
  }

  Widget textbuton() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            button(const Icon(FontAwesomeIcons.globe)),
            button(const Icon(Icons.directions)),
            button(const Icon(Icons.phone)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Website", style: myStyle2),
            Text("Directions", style: myStyle2),
            Text("Enquiry", style: myStyle2),
          ],
        ),
      ],
    );
  }
}
