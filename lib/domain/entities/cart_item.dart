import 'package:food_delivery_app/core/multilingual.dart';

class CartItem {
  final String id;
  final double price;
  final int quantity;
  final Multilingual title;
  final Multilingual shortDescription;

  CartItem(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.title,
      required this.shortDescription});
}
