import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';

import 'cart_list.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      builder: (context, state) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Your Cart",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              CartList(
                cartItems: state.items,
              )
            ],
          ),
        ),
      ),
      listener: (context, state) {},
    );
  }
}
