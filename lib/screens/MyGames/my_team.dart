import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:games4u/model/gamesmodel.dart';
import 'package:http/http.dart' as http;

class MyTeam extends StatefulWidget {
  const MyTeam({super.key});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  Future<List<Userteam>> usersteam = getUserTeam();
  //Api for Academy
  static Future<List<Userteam>> getUserTeam() async {
    const url =
        "https://beosports-webapi.onrender.com/api/1/TeamMasterAndSportDetail/AllTeam";
    final response = await http.get(Uri.parse(url), headers: {
      "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
      "Content-type": "application/json",
    });

    final body = json.decode(response.body);
    return body.map<Userteam>(Userteam.fromJson).toList();
  }

  //its not required
  @override
  void initState() {
    super.initState();
    usersteam = getUserTeam();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // ignore: sized_box_for_whitespace
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<Userteam>>(
          future: usersteam,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: unused_local_variable
              final teamuser = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("SELECTED PLAYERS()"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("INVITE"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    buildmyteam(teamuser),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildmyteam(List<Userteam> teamuser) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: teamuser.length,
        itemBuilder: (context, index) {
          final team = teamuser[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.black), // sets the text color
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(
                            255, 211, 205, 205)), // sets the background color
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.cyan, width: 2),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // sets the border radius
                      ),
                    ), // sets the border color and width
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(team.logoImg),
                              radius: MediaQuery.of(context).size.width * 0.07,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(team.name),
                            Row(
                              children: [
                                const Text("Game Name : "),
                                Text(team.sportName),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        },
      );
}
