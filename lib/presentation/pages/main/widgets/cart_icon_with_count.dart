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
    final locale = Localizations.localeOf(context);
    return BlocBuilder<CartCubit, CartState>(
        builder: (context, state) => Stack(
              children: [
                Image.asset(
                  "assets/icons/cart.png",
                  height: 24,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10)),
                    child: state.items.isEmpty
                        ? const SizedBox()
                        : Text(
                            state.items.itemsCount().translate(locale),
                            style: const TextStyle(fontSize: 10),
                          )),
              ],
            ));
  }
}
