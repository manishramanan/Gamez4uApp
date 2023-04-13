import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:games4u/model/academy_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'academy_new2.dart';

Future<List<UserAcad>> fetchAcad() async {
  final response = await http.get(
      Uri.parse(
          'https://beosports-webapi.onrender.com/api/1/AcademyMasterAndDetail/AllAcademies'),
      headers: {
        "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
        "Content-type": "application/json",
        "Access-Control-Allow-Origin": "*",
      });
  if (response.statusCode == 200) {
    final parsed = json.decode(response.body);
    return parsed.map<UserAcad>((json) => UserAcad.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class AcadNew extends StatefulWidget {
  const AcadNew({super.key});

  @override
  State<AcadNew> createState() => _AcadNewState();
}

class _AcadNewState extends State<AcadNew> {
  late Future<List<UserAcad>> futureAcad;
  @override
  void initState() {
    super.initState();
    futureAcad = fetchAcad();
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
        title: const Text("Cricket Academy"),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: FutureBuilder(
              future: futureAcad,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final acaduser = snapshot.data!;
                  return buildacademy(acaduser);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )),
      ),
    );
  }

  Widget buildacademy(List<UserAcad> acaduser) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: acaduser.length,
      itemBuilder: (context, index) {
        final user = acaduser[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Color(0xFF00A4E4)),
              ),
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AcadNew2()),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: myStyle1,
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text(user.averagerating.toString(),
                                  style: myStyle),
                              const StarRating(rating: 3),
                              Text('\t (${user.noofreviews})', style: myStyle),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(user.address, style: myStyle2),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text("Hours : ", style: myStyle),
                              Text("${user.startTime} to ${user.endTime}",
                                  style: myStyle),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text("Days : ", style: myStyle),
                              Text("Mon to Sun", style: myStyle),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text("Phone : ", style: myStyle),
                              Text(user.phone, style: myStyle),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    bottom: 10,
                    child: Row(
                      children: [
                        button(const Icon(FontAwesomeIcons.globe), "Website"),
                        button(const Icon(Icons.directions), "Directions"),
                        button(const Icon(Icons.phone), "Enquiry"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget button(
    Widget icons,
    String name,
  ) {
    return IconButton(
      onPressed: () {},
      tooltip: name,
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
}

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(Icons.star,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        } else if (index < rating) {
          return Icon(Icons.star_half,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        } else {
          return Icon(Icons.star_border,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        }
      }),
    );
  }
}
