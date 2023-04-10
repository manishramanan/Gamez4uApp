import 'dart:convert';

List<Subscription> subscriptionFromJson(String str) => List<Subscription>.from(json.decode(str).map((x) => Subscription.fromJson(x)));

String subscriptionToJson(List<Subscription> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Subscription {
    Subscription({
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

    factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
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
