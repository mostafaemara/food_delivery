import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import "package:auto_route/auto_route.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/helpers/orders_helper.dart';
import 'package:food_delivery_app/presentation/helpers/translators.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class OrdersListItem extends StatelessWidget {
  const OrdersListItem({Key? key, required this.order}) : super(key: key);
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${AppLocalizations.of(context)!.order} #${order.id}",
                  style: Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  order.date.translateAndFormat(context),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${AppLocalizations.of(context)!.quantity}: ${order.totalItemsQuantity().translate(context)}",
                  style: Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "${AppLocalizations.of(context)!.totalPrice}: ${order.totalPriceWithFees.translate(context)} ${AppLocalizations.of(context)!.egp} ",
                  style: Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.navigateTo(OrderDetailsRoute(order: order));
                    },
                    child: Text(AppLocalizations.of(context)!.details)),
                Text(
                  "${AppLocalizations.of(context)!.orderState}: ${order.status.translate(context)}",
                  style: Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
