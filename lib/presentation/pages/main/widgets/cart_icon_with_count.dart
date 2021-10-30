import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';

import "../../../helpers/cart_helper.dart";
import "../../../helpers/translators.dart";

class CartIconWithCount extends StatelessWidget {
  const CartIconWithCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
        builder: (context, state) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 15, top: 10),
                  child: Image.asset(
                    "assets/icons/cart.png",
                    height: 24,
                  ),
                ),
                state.items.isEmpty
                    ? const SizedBox()
                    : Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: FittedBox(
                          child: Text(
                            state.items.itemsCount().translate(context),
                            style: Theme.of(context).textTheme.caption,
                          ),
                        )),
              ],
            ));
  }
}
