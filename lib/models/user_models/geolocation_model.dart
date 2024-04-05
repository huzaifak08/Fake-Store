import 'package:fakes_store/exports/libraries.dart';

class GeoLocationModel extends Equatable {
  final String latitude;
  final String longitude;
  const GeoLocationModel({
    required this.latitude,
    required this.longitude,
  });

  GeoLocationModel copyWith({
    String? latitude,
    String? longitude,
  }) {
    return GeoLocationModel(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory GeoLocationModel.fromMap(Map<String, dynamic> map) {
    return GeoLocationModel(
      latitude: map['latitude'] ?? '',
      longitude: map['longitude'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GeoLocationModel.fromJson(String source) =>
      GeoLocationModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'GeoLocationModel(latitude: $latitude, longitude: $longitude)';

  @override
  List<Object> get props => [latitude, longitude];
}
