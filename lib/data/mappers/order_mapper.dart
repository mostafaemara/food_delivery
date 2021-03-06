import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:food_delivery_app/data/models/multilingual.dart';
import 'package:food_delivery_app/domain/entities/order_status.dart';
import 'package:food_delivery_app/domain/entities/preorder.dart';
import 'package:food_delivery_app/domain/entities/order_item.dart';

class OrderItemMapper {
  static Map<String, dynamic> toMap(OrderItem orderItem) {
    return {
      "quantity": orderItem.quantity,
      "id": orderItem.id,
      "price": orderItem.price,
      "title": orderItem.title
    };
  }

  static OrderItem mapToOrderItem(Map<String, dynamic> map) {
    return OrderItem(
        quantity: map["quantity"],
        title: MultilingualModel.fromMap(map["title"]),
        price: map["price"].toDouble(),
        id: map["id"],
        totalPrice: map["total"].toDouble());
  }
}

class PreorderMapper {
  static Map<String, dynamic> toMap(Preorder order) {
    return {
      "items": order.items.map((e) => OrderItemMapper.toMap(e)).toList(),
      "uid": order.uid,
      "date": FieldValue.serverTimestamp()
    };
  }

  static Preorder maptoPreorder(Map<String, dynamic> map) {
    return Preorder(
      items: List<OrderItem>.from(
          map["items"].map((e) => OrderItemMapper.mapToOrderItem(e))),
      uid: map["uid"],
      totalPriceWithFees: map["totalPriceWithFees"].toDouble(),
      deliveryFees: map["deliveryFees"].toDouble(),
      totalPrice: map["totalPrice"].toDouble(),
    );
  }
}

class OrderStatusMapper {
  static OrderStatus mapToOrderStatus(String orderStatusString) {
    switch (orderStatusString) {
      case "submitted":
        return const OrderStatus.submitted();

      case "onTheWayToYou":
        return const OrderStatus.onTheWayToYou();
      case "received":
        return const OrderStatus.recevied();
      default:
        throw Exception("invalid OrderStatus");
    }
  }
}
