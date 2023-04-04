import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:games4u/Network/endpoints.dart';
import '../model/subscriptionmodel.dart';

// ignore: must_be_immutable
class ApiSub extends StatelessWidget {
  ApiSub({super.key});

  Future<List<Sub>> userSub = getSubc();
  //Api for Academy
  static Future<List<Sub>> getSubc() async {
    const url = "${Endpoints.baseURL}/api/1/SubscriptionMaster/subscriptions";
    final response = await http.get(Uri.parse(url), headers: {
      "x-authkey": "uynjsykkloye679km@~556HHTrMolews",
      "Content-type": "application/json",
      "Access-Control-Allow-Origin": "*",
    });

    final body = json.decode(response.body);
    return body.map<Sub>(Sub.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.grey,
        // type: MaterialType.transparency,
        child: FutureBuilder<List<Sub>>(
          future: userSub,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: unused_local_variable
              final subc = snapshot.data!;
              return Center(child: buildSubc(subc));
            } else {
              return const Text("No user data");
            }
          },
        ),
      ),
    );
  }

  Widget buildSubc(List<Sub> subcr) => Expanded(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: subcr.length,
            itemBuilder: (context, index) {
              // ignore: unused_local_variable
              final userSub = subcr[index];
              return Column(
                children: [
                  Text(userSub.plan),
                ],
              );
            }),
      );
}
