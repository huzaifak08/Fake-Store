import 'package:fakes_store/exports/libraries.dart';

class GeoLocationModel extends Equatable {
  final String lat;
  final String long;
  const GeoLocationModel({
    required this.lat,
    required this.long,
  });

  GeoLocationModel copyWith({
    String? lat,
    String? long,
  }) {
    return GeoLocationModel(
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'long': long,
    };
  }

  factory GeoLocationModel.fromMap(Map<String, dynamic> map) {
    return GeoLocationModel(
      lat: map['lat'] ?? '',
      long: map['long'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GeoLocationModel.fromJson(String source) =>
      GeoLocationModel.fromMap(json.decode(source));

  @override
  String toString() => 'GeoLocationModel(lat: $lat, long: $long)';

  @override
  List<Object> get props => [lat, long];
}
