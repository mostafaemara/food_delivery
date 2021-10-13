import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/application/bloc/cart/cart_cubit.dart';

import 'package:food_delivery_app/presentation/helpers/cart_helper.dart';
import 'package:food_delivery_app/presentation/pages/main/cart/widgets/cart_list.dart';
import "../../../helpers/translators.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return BlocConsumer<CartCubit, CartState>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppLocalizations.of(context)!.yourCart,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.total,
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "${state.items.totalPrice().translate(locale)} ${AppLocalizations.of(context)!.egp}",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(AppLocalizations.of(context)!.processToPayment)),
          )
        ],
      ),
      listener: (context, state) {
        if (state.items.isNotEmpty) {}
      },
    );
  }
}
