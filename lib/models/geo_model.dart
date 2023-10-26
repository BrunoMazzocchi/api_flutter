/// Model class for Geo
class Geo {
  /// Constructor
  Geo({
    required this.lat,
    required this.lng,
  });

  /// fromJson
  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json['lat'],
        lng: json['lng'],
      );

  /// lat
  String lat;

  /// lng
  String lng;

  /// To Json
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
      };
}
