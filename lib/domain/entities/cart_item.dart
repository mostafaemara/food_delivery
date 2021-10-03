import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/core/multilingual.dart';

class CartItem extends Equatable {
  final String id;
  final double price;
  final int quantity;
  final Multilingual title;
  final Multilingual shortDescription;
  final String imageUrl;

  const CartItem(
      {required this.imageUrl,
      required this.id,
      required this.price,
      required this.quantity,
      required this.title,
      required this.shortDescription});

  CartItem copyWithQuantity(int qty) {
    return CartItem(
        imageUrl: imageUrl,
        id: id,
        price: price,
        quantity: qty,
        title: title,
        shortDescription: shortDescription);
  }

  @override
  List<Object?> get props => [id, price, quantity, title, shortDescription];
}
