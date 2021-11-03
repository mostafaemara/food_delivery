import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/entities/order_item.dart';
import 'package:food_delivery_app/domain/entities/order_status.dart';

class Order {
  final double deliveryFees;
  final List<OrderItem> items;
  final OrderStatus status;
  final double totalPrice;
  final double totalPriceWithFees;
  final String uid;
  final Address address;
  final String id;
  final DateTime date;

  Order(
      {required this.deliveryFees,
      required this.id,
      required this.date,
      required this.items,
      required this.status,
      required this.totalPrice,
      required this.totalPriceWithFees,
      required this.uid,
      required this.address});
}
