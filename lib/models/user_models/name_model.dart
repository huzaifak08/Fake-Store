import 'package:fakes_store/exports/libraries.dart';

class NameModel extends Equatable {
  final String firstName;
  final String lastName;
  const NameModel({
    required this.firstName,
    required this.lastName,
  });

  NameModel copyWith({
    String? firstName,
    String? lastName,
  }) {
    return NameModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  factory NameModel.fromMap(Map<String, dynamic> map) {
    return NameModel(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory NameModel.fromJson(String source) =>
      NameModel.fromMap(json.decode(source));

  @override
  String toString() => 'NameModel(firstName: $firstName, lastName: $lastName)';

  @override
  List<Object> get props => [firstName, lastName];
}
