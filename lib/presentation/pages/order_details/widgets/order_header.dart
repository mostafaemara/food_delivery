import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import 'package:food_delivery_app/presentation/helpers/translators.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/helpers/address_helper.dart';

class OrderHeader extends StatelessWidget {
  const OrderHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final order = context.read<Order>();
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("${AppLocalizations.of(context)!.order}: #${order.id}"),
          Text(
            "${AppLocalizations.of(context)!.date}: ${order.date.translateAndFormat(context)}",
          ),
          Text(
            AppLocalizations.of(context)!.deliveryAddress,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text(order.address.formattedString()),
        ],
      ),
    );
  }
}
