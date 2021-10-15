import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';
import "multilingual_mapper.dart";

extension CartToDomainMapper on QueryDocumentSnapshot<Map<String, dynamic>> {
  CartItem mapToCartItem() {
    return CartItem(
        imageUrl: data()["imageUrl"],
        quantity: data()["quantity"],
        price: data()["price"].toDouble(),
        id: data()["id"],
        shortDescription: (data()["shortDescription"] as Map<String, dynamic>)
            .toMultilingual(),
        title: (data()["title"] as Map<String, dynamic>).toMultilingual());
  }
}
