import 'package:fakes_store/exports/libraries.dart';

class CartModel extends Equatable {
  final int id;
  final int userId;
  final DateTime date;
  final List<CartProductModel> products;
  const CartModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  CartModel copyWith({
    int? id,
    int? userId,
    DateTime? date,
    List<CartProductModel>? products,
  }) {
    return CartModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      products: products ?? this.products,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'date': date.millisecondsSinceEpoch,
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      id: map['id']?.toInt() ?? 0,
      userId: map['userId']?.toInt() ?? 0,
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      products: List<CartProductModel>.from(
          map['products']?.map((x) => CartProductModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) =>
      CartModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartModel(id: $id, userId: $userId, date: $date, products: $products)';
  }

  @override
  List<Object> get props => [id, userId, date, products];
}
