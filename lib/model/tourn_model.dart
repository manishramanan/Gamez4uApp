import 'dart:convert';

Addtourm addtourmFromJson(String str) => Addtourm.fromJson(json.decode(str));

String addtourmToJson(Addtourm data) => json.encode(data.toJson());

class Addtourm {
    Addtourm({
        this.id,
        this.name,
        this.logoPath,
        this.bannerPath,
        this.sportId,
        this.noOfParticipants,
        this.participantId,
        this.startDate,
        this.endDate,
        this.entryFee,
        this.latitude,
        this.longitude,
    });

    String? id;
    dynamic name;
    dynamic logoPath;
    dynamic bannerPath;
    String? sportId;
    int? noOfParticipants;
    dynamic participantId;
    dynamic startDate;
    dynamic endDate;
    dynamic entryFee;
    int? latitude;
    int? longitude;

    factory Addtourm.fromJson(Map<String, dynamic> json) => Addtourm(
        id: json["id"],
        name: json["name"],
        logoPath: json["logoPath"],
        bannerPath: json["bannerPath"],
        sportId: json["sportId"],
        noOfParticipants: json["noOfParticipants"],
        participantId: json["participantId"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        entryFee: json["entryFee"],
        latitude: json["latitude"],
        longitude: json["longitude"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "logoPath": logoPath,
        "bannerPath": bannerPath,
        "sportId": sportId,
        "noOfParticipants": noOfParticipants,
        "participantId": participantId,
        "startDate": startDate,
        "endDate": endDate,
        "entryFee": entryFee,
        "latitude": latitude,
        "longitude": longitude,
    };
}
