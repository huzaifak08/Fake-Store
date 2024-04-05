import 'package:fakes_store/exports/libraries.dart';

class CartProductModel extends Equatable {
  final int productId;
  final int quantity;
  const CartProductModel({
    required this.productId,
    required this.quantity,
  });

  CartProductModel copyWith({
    int? productId,
    int? quantity,
  }) {
    return CartProductModel(
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'quantity': quantity,
    };
  }

  factory CartProductModel.fromMap(Map<String, dynamic> map) {
    return CartProductModel(
      productId: map['productId']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartProductModel.fromJson(String source) =>
      CartProductModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'CartProductModel(productId: $productId, quantity: $quantity)';

  @override
  List<Object> get props => [productId, quantity];
}
