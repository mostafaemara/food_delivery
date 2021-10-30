import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';
import 'package:food_delivery_app/presentation/helpers/cart_helper.dart';
import 'package:food_delivery_app/presentation/helpers/translators.dart';

class CartTotalPrice extends StatelessWidget {
  const CartTotalPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartState = context.watch<CartCubit>().state;
    final totalPrice = cartState.items.totalPrice();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppLocalizations.of(context)!.total,
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            "${totalPrice.translate(context)} ${AppLocalizations.of(context)!.egp}",
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
