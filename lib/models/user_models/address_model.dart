import 'package:fakes_store/exports/libraries.dart';

class AddressModel extends Equatable {
  final String city;
  final String street;
  final int number;
  final String zip;
  final GeoLocationModel location;
  const AddressModel({
    required this.city,
    required this.street,
    required this.number,
    required this.zip,
    required this.location,
  });

  AddressModel copyWith({
    String? city,
    String? street,
    int? number,
    String? zip,
    GeoLocationModel? location,
  }) {
    return AddressModel(
      city: city ?? this.city,
      street: street ?? this.street,
      number: number ?? this.number,
      zip: zip ?? this.zip,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'city': city,
      'street': street,
      'number': number,
      'zip': zip,
      'location': location.toMap(),
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      city: map['city'] ?? '',
      street: map['street'] ?? '',
      number: map['number']?.toInt() ?? 0,
      zip: map['zip'] ?? '',
      location: GeoLocationModel.fromMap(map['location']),
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AddressModel(city: $city, street: $street, number: $number, zip: $zip, location: $location)';
  }

  @override
  List<Object> get props {
    return [
      city,
      street,
      number,
      zip,
      location,
    ];
  }
}
