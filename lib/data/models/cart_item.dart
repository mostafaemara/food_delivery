import 'package:food_delivery_app/core/multilingual.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';

import 'multilingual.dart';

class CartItemModel extends CartItem {
  const CartItemModel({
    required String imageUrl,
    required String id,
    required Multilingual title,
    required double price,
    required int quantity,
    required Multilingual shortDescription,
  }) : super(
            imageUrl: imageUrl,
            id: id,
            price: price,
            quantity: quantity,
            shortDescription: shortDescription,
            title: title);

  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
        imageUrl: map["imageUrl"],
        quantity: map["quantity"],
        price: map["price"].toDouble(),
        id: map["id"],
        shortDescription: MultilingualModel.fromMap(map["shortDescription"]),
        title: MultilingualModel.fromMap(map["title"]));
  }
}
