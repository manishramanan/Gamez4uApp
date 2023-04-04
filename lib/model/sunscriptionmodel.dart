import 'dart:convert';

List<Sub> subFromJson(String str) => List<Sub>.from(json.decode(str).map((x) => Sub.fromJson(x)));

String subToJson(List<Sub> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sub {
    Sub({
        required this.id,
        required this.plan,
        required this.details,
        required this.price,
        required this.userType,
        required this.duration,
    });

    String id;
    String plan;
    String details;
    int price;
    String userType;
    int duration;

    factory Sub.fromJson(Map<String, dynamic> json) => Sub(
        id: json["id"],
        plan: json["plan"],
        details: json["details"],
        price: json["price"],
        userType: json["userType"],
        duration: json["duration"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "plan": plan,
        "details": details,
        "price": price,
        "userType": userType,
        "duration": duration,
    };
}
