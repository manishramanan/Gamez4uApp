import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:games4u/api_services/constants.dart';
import 'package:games4u/model/UserLoginModel.dart';

Future<UserLogin> createUserLogin(String? email, String? password,
    String? userName, String? token, String? phoneNumber) async {
  final response = await http.post(
    Uri.parse(UserLoginApiConstants.baseUrl +
        UserLoginApiConstants.userLoginPostEndpoint),
    headers: <String, String>{
      'content-type': 'application/json',
      'x-authkey': authKeyValue,
    },
    body: jsonEncode(<String, String?>{
      'email': email,
      'password': password,
      'username': userName,
      'token': token,
      'phoneNumber': phoneNumber
    }),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 response,
    // then parse the JSON.
    return UserLogin.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 response,
    // then throw an exception.
    throw Exception('Failed to create user login.');
  }
}
