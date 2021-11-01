import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/mappers/address_mapper.dart';
import 'package:food_delivery_app/data/mappers/order_mapper.dart';
import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import 'package:food_delivery_app/domain/entities/order_item.dart';
import 'package:food_delivery_app/domain/entities/order_status.dart';

class OrderModel extends Order {
  OrderModel(
      {required String id,
      required double deliveryFees,
      required List<OrderItem> items,
      required OrderStatus status,
      required double totalPrice,
      required double totalPriceWithFees,
      required String uid,
      required Address address})
      : super(
            id: id,
            address: address,
            deliveryFees: deliveryFees,
            items: items,
            status: status,
            totalPrice: totalPrice,
            totalPriceWithFees: totalPriceWithFees,
            uid: uid);

  factory OrderModel.fromDocument(
      QueryDocumentSnapshot<Map<String, dynamic>> document) {
    final map = document.data();
    return OrderModel(
        id: document.id,
        deliveryFees: map["deliveryFees"].toDouble(),
        items: List<OrderItem>.from(
            map["items"].map((e) => OrderItemMapper.mapToOrderItem(e))),
        status:
            OrderStatusMapper.mapToOrderStatus(document.data()["orderStatus"]),
        totalPrice: map["totalPrice"].toDouble(),
        totalPriceWithFees: map["totalPriceWithFees"].toDouble(),
        uid: map["uid"],
        address: AddressMapper.mapToAddress(map["address"]));
  }
}
