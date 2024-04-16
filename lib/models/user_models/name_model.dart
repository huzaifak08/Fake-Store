import 'package:fakes_store/exports/libraries.dart';

class NameModel extends Equatable {
  final String firstname;
  final String lastname;
  const NameModel({
    required this.firstname,
    required this.lastname,
  });

  NameModel copyWith({
    String? firstname,
    String? lastname,
  }) {
    return NameModel(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
    };
  }

  factory NameModel.fromMap(Map<String, dynamic> map) {
    return NameModel(
      firstname: map['firstname'] ?? '',
      lastname: map['lastname'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory NameModel.fromJson(String source) =>
      NameModel.fromMap(json.decode(source));

  @override
  String toString() => 'NameModel(firstname: $firstname, lastname: $lastname)';

  @override
  List<Object> get props => [firstname, lastname];
}
