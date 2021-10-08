import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';

import 'cart_list_item.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key, required this.cartItems}) : super(key: key);
  final List<CartItem> cartItems;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
            cartItems.length,
            (index) => CartListItem(
                  cartItem: cartItems[index],
                ))
      ],
    );
  }
}
