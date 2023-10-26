import 'package:api_test/models/geo_model.dart';

/// Address
class Address {
  /// Constructor
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  /// From Json
  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json['street'],
        suite: json['suite'],
        city: json['city'],
        zipcode: json['zipcode'],
        geo: Geo.fromJson(json['geo']),
      );

  /// Street
  String street;

  /// Suite
  String suite;

  /// City
  String city;

  /// Zipcode
  String zipcode;

  /// Geo
  Geo geo;

  /// To Json
  Map<String, dynamic> toJson() => {
        'street': street,
        'suite': suite,
        'city': city,
        'zipcode': zipcode,
        'geo': geo.toJson(),
      };
}
