import 'dart:developer';

import 'package:api_test/constants/api_constants.dart';
import 'package:api_test/models/user_model.dart';
import 'package:http/http.dart' as http;

/// Api Service
class ApiService {
  /// Get Users
  Future<List<UserModel>?> getUsers() async {
    try {
      final url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonResponse = response.body;
        return UserModel.userModelFromJson(jsonResponse);
      }
    } on Exception catch (e) {
      log(e.toString());
    }
    return null;
  }
}
