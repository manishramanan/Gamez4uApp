// ignore: file_names
import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.id,
    required this.name,
    required this.imgpath,
    required this.createdDate,
    required this.updatedDate,
    required this.phone,
    required this.website,
    required this.averagerating,
    required this.noofreviews,
  });

  String id;
  String name;
  String imgpath;
  DateTime createdDate;
  DateTime updatedDate;
  String phone;
  String website;
  double averagerating;
  int noofreviews;

  factory User.fromJson(json) => User(
        id: json["id"],
        name: json["name"],
        imgpath: json["imgpath"],
        createdDate: DateTime.parse(json["createdDate"]),
        updatedDate: DateTime.parse(json["updatedDate"]),
        phone: json["phone"],
        website: json["website"],
        averagerating: json["averagerating"]?.toDouble(),
        noofreviews: json["noofreviews"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imgpath": imgpath,
        "createdDate": createdDate.toIso8601String(),
        "updatedDate": updatedDate.toIso8601String(),
        "phone": phone,
        "website": website,
        "averagerating": averagerating,
        "noofreviews": noofreviews,
      };
}

//API Sponser
List<Sponser> sponserFromJson(String str) =>
    List<Sponser>.from(json.decode(str).map((x) => Sponser.fromJson(x)));

String sponserToJson(List<Sponser> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sponser {
  Sponser({
    required this.id,
    required this.sponsorName,
    required this.sponsorFor,
    required this.imgPath,
  });

  String id;
  String sponsorName;
  String sponsorFor;
  String imgPath;

  factory Sponser.fromJson(json) => Sponser(
        id: json["id"],
        sponsorName: json["sponsorName"],
        sponsorFor: json["sponsorFor"],
        imgPath: json["imgPath"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sponsorName": sponsorName,
        "sponsorFor": sponsorFor,
        "imgPath": imgPath,
      };
}


List<Tourm> tourmFromJson(String str) => List<Tourm>.from(json.decode(str).map((x) => Tourm.fromJson(x)));

String tourmToJson(List<Tourm> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tourm {
    Tourm({
        required this.id,
        required this.name,
        required this.logoPath,
        this.bannerPath,
        required this.sportId,
    });

    String id;
    String name;
    String logoPath;
    String? bannerPath;
    String sportId;

    factory Tourm.fromJson(json) => Tourm(
        id: json["id"],
        name: json["name"],
        logoPath: json["logoPath"],
        bannerPath: json["bannerPath"],
        sportId: json["sportId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logoPath": logoPath,
        "bannerPath": bannerPath,
        "sportId": sportId,
    };
}
