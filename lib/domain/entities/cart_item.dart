import 'package:food_delivery_app/core/multilingual.dart';

class CartItem {
  final String id;
  final double price;
  int quantity;
  final Multilingual title;
  final Multilingual shortDescription;

  CartItem(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.title,
      required this.shortDescription});

  void increaseQuantity(int qty) {
    quantity += qty;
  }

  void decreaseQuantity() {
    quantity = quantity--;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CartItem && id == other.id;
  @override
  int get hashCode => id.hashCode;
}
