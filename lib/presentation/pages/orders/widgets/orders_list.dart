import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import 'package:food_delivery_app/presentation/pages/orders/widgets/orders_list_item.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({Key? key, required this.orders}) : super(key: key);
  final List<Order> orders;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        itemBuilder: (context, index) => OrdersListItem(order: orders[index]),
        itemCount: orders.length,
      ),
    );
  }
}
