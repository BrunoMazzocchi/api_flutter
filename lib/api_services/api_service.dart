import 'dart:developer';

import 'package:api_test/constants/api_constants.dart';
import 'package:api_test/models/user_model.dart';
import 'package:http/http.dart' as http;


class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonResponse = response.body;
        return UserModel.userModelFromJson(jsonResponse);
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
