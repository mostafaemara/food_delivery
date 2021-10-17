import 'package:food_delivery_app/domain/entities/cart_item.dart';
import 'package:food_delivery_app/domain/entities/order_item.dart';

class Order {
  final List<OrderItem> items;
  final DateTime date;
  final String uid;
  final String userName;
  final String orderId;

  Order(
      {required this.items,
      required this.date,
      required this.uid,
      required this.userName,
      required this.orderId});
}
