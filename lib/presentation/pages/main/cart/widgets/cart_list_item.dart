import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';
import "../../../../helpers/translators.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CartListItem extends StatelessWidget {
  CartListItem({Key? key, required this.cartItem})
      : super(key: Key(cartItem.id));
  final CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return Slidable(
      secondaryActions: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/edite.png",
              height: 40,
            )),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              BlocProvider.of<CartCubit>(context).deleteCartItem(cartItem.id);
            },
            icon: Image.asset(
              "assets/icons/delete.png",
              height: 40,
            )),
      ],
      actionPane: const SlidableScrollActionPane(),
      actionExtentRatio: 0.18,
      child: SizedBox(
          height: 112,
          child: Card(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        cartItem.imageUrl,
                        height: 68,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cartItem.title.translate(locale),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
                          Text(
                            "${cartItem.price.translate(locale)}${AppLocalizations.of(context)!.egp}",
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            BlocProvider.of<CartCubit>(context)
                                .decreaseCartQty(cartItem.id);
                          },
                          icon: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Theme.of(context).colorScheme.primary,
                              child: Icon(
                                Icons.remove,
                                color: Theme.of(context).colorScheme.onPrimary,
                              )),
                          color: Colors.red,
                        ),
                        Text(cartItem.quantity.translate(locale)),
                        IconButton(
                          onPressed: () {
                            BlocProvider.of<CartCubit>(context)
                                .increaseCartQty(cartItem.id);
                          },
                          icon: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Theme.of(context).colorScheme.primary,
                              child: Icon(
                                Icons.add,
                                color: Theme.of(context).colorScheme.onPrimary,
                              )),
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                )),
          )),
    );
  }
}
