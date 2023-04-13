import 'dart:convert';

List<Userteam> userteamFromJson(String str) =>
    List<Userteam>.from(json.decode(str).map((x) => Userteam.fromJson(x)));

String userteamToJson(List<Userteam> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Userteam {
  Userteam({
    required this.id,
    required this.name,
    required this.logoImg,
    required this.sportId,
    required this.extraPlayers,
    required this.createdBy,
    required this.sportName,
    required this.noOfPlayers,
  });

  String id;
  String name;
  String logoImg;
  String sportId;
  int extraPlayers;
  String createdBy;
  String sportName;
  String noOfPlayers;

  factory Userteam.fromJson(json) => Userteam(
        id: json["id"],
        name: json["name"],
        logoImg: json["logoImg"],
        sportId: json["sportId"],
        extraPlayers: json["extraPlayers"],
        createdBy: json["createdBy"],
        sportName: json["sportName"],
        noOfPlayers: json["noOfPlayers"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logoImg": logoImg,
        "sportId": sportId,
        "extraPlayers": extraPlayers,
        "createdBy": createdBy,
        "sportName": sportName,
        "noOfPlayers": noOfPlayers,
      };
}

//post method for add team 

Addteams addteamsFromJson(String str) => Addteams.fromJson(json.decode(str));

String addteamsToJson(Addteams data) => json.encode(data.toJson());

class Addteams {
    Addteams({
        this.id,
        this.name,
        this.logoImg,
        this.sportId,
        this.extraPlayers,
        this.teamProperties,
        this.createdDate,
        this.createdBy,
        this.updatedDate,
    });

    String? id;
    dynamic name;
    dynamic logoImg;
    String? sportId;
    dynamic extraPlayers;
    dynamic teamProperties;
    DateTime? createdDate;
    String? createdBy;
    dynamic updatedDate;

    factory Addteams.fromJson(Map<String, dynamic> json) => Addteams(
        id: json["id"],
        name: json["name"],
        logoImg: json["logoImg"],
        sportId: json["sportId"],
        extraPlayers: json["extraPlayers"],
        teamProperties: json["teamProperties"],
        createdDate: json["createdDate"] == null ? null : DateTime.parse(json["createdDate"]),
        createdBy: json["createdBy"],
        updatedDate: json["updatedDate"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logoImg": logoImg,
        "sportId": sportId,
        "extraPlayers": extraPlayers,
        "teamProperties": teamProperties,
        "createdDate": createdDate?.toIso8601String(),
        "createdBy": createdBy,
        "updatedDate": updatedDate,
    };
}
