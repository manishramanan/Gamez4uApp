import 'dart:convert';

List<UserAcad> userAcadFromJson(String str) =>
    List<UserAcad>.from(json.decode(str).map((x) => UserAcad.fromJson(x)));

String userAcadToJson(List<UserAcad> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserAcad {
  UserAcad({
    required this.id,
    required this.name,
    required this.imgpath,
    required this.phone,
    required this.website,
    required this.averagerating,
    required this.noofreviews,
    required this.address,
    this.about,
    required this.startTime,
    required this.endTime,
    required this.longitude,
    required this.latitude,
  });

  String id;
  String name;
  String imgpath;
  String phone;
  String website;
  int averagerating;
  int noofreviews;
  String address;
  dynamic about;
  String startTime;
  String endTime;
  double longitude;
  double latitude;

  factory UserAcad.fromJson(Map<String, dynamic> json) => UserAcad(
        id: json["id"],
        name: json["name"],
        imgpath: json["imgpath"],
        phone: json["phone"],
        website: json["website"],
        averagerating: json["averagerating"],
        noofreviews: json["noofreviews"],
        address: json["address"],
        about: json["about"],
        startTime: json["startTime"],
        endTime: json["endTime"],
        longitude: json["longitude"]?.toDouble(),
        latitude: json["latitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imgpath": imgpath,
        "phone": phone,
        "website": website,
        "averagerating": averagerating,
        "noofreviews": noofreviews,
        "address": address,
        "about": about,
        "startTime": startTime,
        "endTime": endTime,
        "longitude": longitude,
        "latitude": latitude,
      };
}

CrickAcad crickAcadFromJson(String str) => CrickAcad.fromJson(json.decode(str));

String crickAcadToJson(CrickAcad data) => json.encode(data.toJson());

class CrickAcad {
  CrickAcad({
    required this.id,
    required this.name,
    required this.imgpath,
    required this.phone,
    required this.website,
    required this.averagerating,
    required this.noofreviews,
    required this.address,
    this.about,
    required this.startTime,
    required this.endTime,
    required this.longitude,
    required this.latitude,
  });

  String id;
  String name;
  String imgpath;
  String phone;
  String website;
  int averagerating;
  int noofreviews;
  String address;
  dynamic about;
  String startTime;
  String endTime;
  double longitude;
  double latitude;

  factory CrickAcad.fromJson(json) => CrickAcad(
        id: json["id"],
        name: json["name"],
        imgpath: json["imgpath"],
        phone: json["phone"],
        website: json["website"],
        averagerating: json["averagerating"],
        noofreviews: json["noofreviews"],
        address: json["address"],
        about: json["about"],
        startTime: json["startTime"],
        endTime: json["endTime"],
        longitude: json["longitude"]?.toDouble(),
        latitude: json["latitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imgpath": imgpath,
        "phone": phone,
        "website": website,
        "averagerating": averagerating,
        "noofreviews": noofreviews,
        "address": address,
        "about": about,
        "startTime": startTime,
        "endTime": endTime,
        "longitude": longitude,
        "latitude": latitude,
      };
}
