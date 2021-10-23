import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/mappers/multilingual_mapper.dart';
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
        title: MultilingualMapper.toMultilingual(map["title"]),
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
      totalPriceWithFees: map["totalPrice"].toDouble(),
      deliveryFees: map["deliveryFees"].toDouble(),
      totalPrice: map["totalPriceWithFees"].toDouble(),
    );
  }
}
