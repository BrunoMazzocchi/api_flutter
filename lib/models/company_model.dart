/// Model class for company
class Company {
  /// Company class constructor
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  /// Company class constructor
  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json['name'],
        catchPhrase: json['catchPhrase'],
        bs: json['bs'],
      );

  /// Name
  String name;

  /// Catch Phrase
  String catchPhrase;

  /// bs
  String bs;

  /// To Json
  Map<String, dynamic> toJson() => {
        'name': name,
        'catchPhrase': catchPhrase,
        'bs': bs,
      };
}
