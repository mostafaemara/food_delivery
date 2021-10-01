import 'package:food_delivery_app/core/multilingual.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';

import 'multilingual.dart';

class CartItemModel extends CartItem {
  CartItemModel({
    required String id,
    required Multilingual title,
    required double price,
    required int quantity,
    required Multilingual shortDescription,
  }) : super(
            id: id,
            price: price,
            quantity: quantity,
            shortDescription: shortDescription,
            title: title);

  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
        quantity: map["quantity"],
        price: map["price"].toDouble(),
        id: map["id"],
        shortDescription: MultilingualModel.fromMap(map["shortDescription"]),
        title: MultilingualModel.fromMap(map["title"]));
  }
}
