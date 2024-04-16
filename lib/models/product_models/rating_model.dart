import 'package:fakes_store/exports/libraries.dart';

class RatingModel extends Equatable {
  final int rate;
  final int count;
  const RatingModel({
    required this.rate,
    required this.count,
  });

  RatingModel copyWith({
    int? rate,
    int? count,
  }) {
    return RatingModel(
      rate: rate ?? this.rate,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'rate': rate,
      'count': count,
    };
  }

  factory RatingModel.fromMap(Map<String, dynamic> map) {
    return RatingModel(
      rate: map['rate']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory RatingModel.fromJson(String source) =>
      RatingModel.fromMap(json.decode(source));

  @override
  String toString() => 'RatingModel(rate: $rate, count: $count)';

  @override
  List<Object> get props => [rate, count];
}
