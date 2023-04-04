import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:games4u/model/Homepagemodel.dart';
import 'package:http/http.dart' as http;
import '../screens/Academy/Cricket_academy.dart';
import 'package:games4u/Network/endpoints.dart';

// ignore: must_be_immutable
class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  Future<List<User>> usersFuture = getUsers();
  //Api for Academy
  static Future<List<User>> getUsers() async {
    const url = "${Endpoints.baseURL}/api/1/AcademyMaster/academies";
    final response = await http.get(Uri.parse(url), headers: {
      "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
      "Content-type": "application/json",
      "Access-Control-Allow-Origin": "*",
    });

    final body = json.decode(response.body);
    return body.map<User>(User.fromJson).toList();
  }

  //its not required
  @override
  void initState() {
    super.initState();
    usersFuture = getUsers();
  }

  List<Widget> screens = [
    const CrickAcademyPage(),
    // const CrickAcademyPage(),
    // const CrickAcademyPage(),
    // const CrickAcademyPage(),
    // const CrickAcademyPage(),
    // const CrickAcademyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        type: MaterialType.transparency,
        child: FutureBuilder<List<User>>(
          future: usersFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: unused_local_variable
              final users = snapshot.data!;
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width,
                child: buildUsers(users),
              );
            } else {
              return const Text("No user data");
            }
          },
        ),
      ),
    );
  }

  Widget buildUsers(List<User> users) => ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screens[0]),
              ),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4.5,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(user.imgpath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Text(
                      user.name,
                      style: const TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10)
          ],
        );
      });
}

// ignore: must_be_immutable
class ApiSports extends StatelessWidget {
  ApiSports({super.key});

  Future<List<Sports>> usersSports = getSports();
  //Api for Academy
  static Future<List<Sports>> getSports() async {
    const url = "${Endpoints.baseURL}/api/1/SportsMaster/sports";
    final response = await http.get(Uri.parse(url), headers: {
      "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
      "Content-type": "application/json",
      "Access-Control-Allow-Origin": "*",
    });

    final body = json.decode(response.body);
    return body.map<Sports>(Sports.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        type: MaterialType.transparency,
        child: FutureBuilder<List<Sports>>(
          future: usersSports,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: unused_local_variable
              final sportsusers = snapshot.data!;
              return buildSports(sportsusers);
            } else {
              return const Text("No user data");
            }
          },
        ),
      ),
    );
  }

  Widget buildSports(List<Sports> sports) => ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: sports.length,
        itemBuilder: (context, index) {
          // ignore: unused_local_variable
          final usersports = sports[index];
          return Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  usersports.sportName,
                  style: const TextStyle(
                      fontSize: 15,
                      fontFamily: "gilroy",
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(width: 15),
            ],
          );
          // return Container(
          //   color: Colors.grey,
          //   height: 10,
          //   width: MediaQuery.of(context).size.width / 3,
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //         // minimumSize: Size( MediaQuery.of(context).size.width /5,  MediaQuery.of(context).size.height * 0.5),
          //         ),
          //     onPressed: () {},
          //     child: Text(
          //       usersports.sportName,
          //       style: const TextStyle(
          //           fontSize: 15,
          //           fontFamily: "gilroy",
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black),
          //     ),
          //   ),
          // );
        },
      );
}

class ApiTourt extends StatefulWidget {
  const ApiTourt({super.key});

  @override
  State<ApiTourt> createState() => _ApiTourtState();
}

class _ApiTourtState extends State<ApiTourt> {
  Future<List<Tourm>> usersTourm = getTourm();

  static Future<List<Tourm>> getTourm() async {
    const url = "${Endpoints.baseURL}/api/1/TournamentMaster/tournaments";
    final response = await http.get(Uri.parse(url), headers: {
      "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
      "Content-type": "application/json",
      'Access-Control-Allow-Origin': '*',
    });

    final body = json.decode(response.body);
    return body.map<Tourm>(Tourm.fromJson).toList();
  }

  @override
  void initState() {
    super.initState();
    usersTourm = getTourm();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: FutureBuilder<List<Tourm>>(
          future: usersTourm,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: unused_local_variable
              final tourms = snapshot.data!;
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                child: buildTourm(tourms),
              );
            } else {
              return const Text("No user data");
            }
          },
        ));
  }

  Widget buildTourm(List<Tourm> tourms) => ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: tourms.length,
        itemBuilder: (context, index) {
          // ignore: unused_local_variable
          final tournament = tourms[index];
          return Container(
            width: MediaQuery.of(context).size.width / 4,
            // height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(tournament.logoPath),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      );
}

// ignore: must_be_immutable
class ApiSponsers extends StatefulWidget {
  const ApiSponsers({super.key});

  @override
  State<ApiSponsers> createState() => _ApiSponsersState();
}

class _ApiSponsersState extends State<ApiSponsers> {
  Future<List<Sponser>> usersSponser = getSponsers();

  static Future<List<Sponser>> getSponsers() async {
    const url = "${Endpoints.baseURL}/api/1/SponsorMaster/sponsors";
    final response = await http.get(Uri.parse(url), headers: {
      "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
      "Content-type": "application/json",
      'Access-Control-Allow-Origin': '*',
    });

    final body = json.decode(response.body);
    return body.map<Sponser>(Sponser.fromJson).toList();
  }

  @override
  void initState() {
    super.initState();
    usersSponser = getSponsers();
  }

  List<Widget> screens = [
    const CrickAcademyPage(),
    // const CrickAcademyPage(),
    // const CrickAcademyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: FutureBuilder<List<Sponser>>(
      future: usersSponser,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final sponsers = snapshot.data!;
          return Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "SPONSERS",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "gilroy",
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                buildSponser(sponsers),
              ],
            ),
          );
        } else {
          return const Text("No user data");
        }
      },
    ));
  }

  Widget buildSponser(List<Sponser> sponsers) => Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: sponsers.length,
          itemBuilder: (context, index) {
            final sponser = sponsers[index];
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width / 4,
              child: Image(
                image: NetworkImage(sponser.imgPath),
              ),
            );
          },
        ),
      );
}
