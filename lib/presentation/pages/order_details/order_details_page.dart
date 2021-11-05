import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/order.dart';
import 'package:food_delivery_app/presentation/pages/order_details/widgets/body.dart';
import 'package:food_delivery_app/presentation/widgets/my_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key, required this.order}) : super(key: key);
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          MyAppBar(title: AppLocalizations.of(context)!.order),
          Provider.value(
            value: order,
            child: const Body(),
          ),
        ],
      ),
    ));
  }
}
