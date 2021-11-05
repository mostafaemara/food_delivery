import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import 'package:food_delivery_app/presentation/helpers/translators.dart';
import 'package:provider/provider.dart';

class OrderFooter extends StatelessWidget {
  const OrderFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final order = context.read<Order>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${AppLocalizations.of(context)!.deliveryFee}:"),
            Text(
                "${order.deliveryFees.translate(context)} ${AppLocalizations.of(context)!.egp}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${AppLocalizations.of(context)!.subtotal}:"),
            Text(
                "${order.totalPrice.translate(context)} ${AppLocalizations.of(context)!.egp}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${AppLocalizations.of(context)!.total}:"),
            Text(
                "${order.totalPriceWithFees.translate(context)} ${AppLocalizations.of(context)!.egp}"),
          ],
        )
      ],
    );
  }
}
