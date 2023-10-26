import 'dart:convert';

import 'package:api_test/models/address_model.dart';
import 'package:api_test/models/company_model.dart';

/// Model class for user
class UserModel {
  /// Constructor
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  /// fromJson
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        address: Address.fromJson(json['address']),
        phone: json['phone'],
        website: json['website'],
        company: Company.fromJson(json['company']),
      );

  /// id
  int id;

  /// name
  String name;

  /// username
  String username;

  /// email
  String email;

  /// address
  Address address;

  /// phone
  String phone;

  /// website
  String website;

  /// company
  Company company;

  ///  ToJson
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        'address': address.toJson(),
        'phone': phone,
        'website': website,
        'company': company.toJson(),
      };

  ///  FromJson
  static List<UserModel> userModelFromJson(String str) =>
      List<UserModel>.from(json.decode(str).map(UserModel.fromJson));

  ///  ToJson
  String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
