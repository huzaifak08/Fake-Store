import 'package:fakes_store/exports/libraries.dart';

class RatingModel extends Equatable {
  final int rating;
  final int count;
  const RatingModel({
    required this.rating,
    required this.count,
  });

  RatingModel copyWith({
    int? rating,
    int? count,
  }) {
    return RatingModel(
      rating: rating ?? this.rating,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'rating': rating,
      'count': count,
    };
  }

  factory RatingModel.fromMap(Map<String, dynamic> map) {
    return RatingModel(
      rating: map['rating']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory RatingModel.fromJson(String source) =>
      RatingModel.fromMap(json.decode(source));

  @override
  String toString() => 'RatingModel(rating: $rating, count: $count)';

  @override
  List<Object> get props => [rating, count];
}
