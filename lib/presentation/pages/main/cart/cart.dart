import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';
import 'package:auto_route/auto_route.dart';

import 'package:food_delivery_app/presentation/pages/main/cart/widgets/empty_cart.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'widgets/cart_with_items.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      builder: (context, state) =>
          state.items.isEmpty ? const EmptyCart() : const CartWithItems(),
      listener: (context, state) {
        if (state.items.isNotEmpty) {}
      },
    );
  }
}
