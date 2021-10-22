import 'package:food_delivery_app/domain/entities/order_item.dart';

class Preorder {
  final List<OrderItem> items;

  final String uid;
  final double deliveryFees;
  final double totalPrice;
  final double totalPriceWithFees;

  Preorder({
    required this.deliveryFees,
    required this.totalPrice,
    required this.totalPriceWithFees,
    required this.items,
    required this.uid,
  });
}
