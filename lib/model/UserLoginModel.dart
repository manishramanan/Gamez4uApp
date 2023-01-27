// To parse this JSON data, do
//
//     final userLogin = userLoginFromJson(jsonString);

// import 'dart:convert';

// // UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));

// // String userLoginToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {
  UserLogin({
    this.email,
    this.userName,
    this.password,
    this.token,
    this.mobile,
  });

  dynamic email;
  dynamic userName;
  dynamic password;
  dynamic token;
  dynamic mobile;

  factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        email: json["email"],
        userName: json["userName"],
        password: json["password"],
        token: json["token"],
        mobile: json["mobile"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "userName": userName,
        "password": password,
        "token": token,
        "mobile": mobile,
      };
}
