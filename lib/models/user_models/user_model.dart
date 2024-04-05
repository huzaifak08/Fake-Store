import 'package:fakes_store/exports/libraries.dart';

class UserModel extends Equatable {
  final int id;
  final String email;
  final String username;
  final String password;
  final NameModel name;
  final AddressModel address;
  final String phone;
  const UserModel({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.address,
    required this.phone,
  });

  UserModel copyWith({
    int? id,
    String? email,
    String? username,
    String? password,
    NameModel? name,
    AddressModel? address,
    String? phone,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'password': password,
      'name': name.toMap(),
      'address': address.toMap(),
      'phone': phone,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id']?.toInt() ?? 0,
      email: map['email'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      name: NameModel.fromMap(map['name']),
      address: AddressModel.fromMap(map['address']),
      phone: map['phone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, username: $username, password: $password, name: $name, address: $address, phone: $phone)';
  }

  @override
  List<Object> get props {
    return [
      id,
      email,
      username,
      password,
      name,
      address,
      phone,
    ];
  }
}
