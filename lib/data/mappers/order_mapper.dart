import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/mappers/multilingual_mapper.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
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
        price: map["price"],
        id: map["id"]);
  }
}

extension OrderItemToMap on OrderItem {
  Map<String, dynamic> toMap() {
    return {"quantity": quantity, "id": id, "price": price, "title": title};
  }
}

extension OrderToMap on Order {
  Map<String, dynamic> toMap() {
    return {
      "items": items.map((e) => OrderItemMapper.toMap(e)).toList(),
      "uid": uid,
      "userName": userName,
      "date": FieldValue.serverTimestamp()
    };
  }
}

class OrderMapper {
  static Map<String, dynamic> toMap(Order order) {
    return {
      "items": order.items.map((e) => OrderItemMapper.toMap(e)).toList(),
      "uid": order.uid,
      "userName": order.userName,
      "date": FieldValue.serverTimestamp()
    };
  }

  static Order firestoreDocToOrder(
      QueryDocumentSnapshot<Map<String, dynamic>> document) {
    return Order(
        items: List<OrderItem>.from(document
            .data()["items"]
            .map((e) => OrderItemMapper.mapToOrderItem(e))),
        date: document.data()["date"],
        uid: document.data()["uid"],
        userName: document.data()["userName"],
        orderId: document.id);
  }
}
