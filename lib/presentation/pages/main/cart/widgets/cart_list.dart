import 'package:flutter/material.dart';

import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_list_item.dart';

class CartList extends StatelessWidget {
  const CartList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartState = context.watch<CartCubit>().state;
    final cartItems = cartState.items;
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
