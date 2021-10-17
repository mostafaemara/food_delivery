import 'package:food_delivery_app/domain/entities/multilingual.dart';

class OrderItem {
  final int quantity;
  final Multilingual title;
  final double price;
  final String id;

  OrderItem(
      {required this.quantity,
      required this.title,
      required this.price,
      required this.id});
}
