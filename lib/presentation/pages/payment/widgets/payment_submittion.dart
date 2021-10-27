import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/bloc/payment/payment_cubit.dart';
import 'package:food_delivery_app/presentation/helpers/translators.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/src/provider.dart';

import 'select_address.dart';

class PaymentSubmittion extends StatelessWidget {
  const PaymentSubmittion({
    Key? key,
    required this.deliveryFee,
    required this.totalPriceWithoutFee,
    required this.totalPriceWithFee,
  }) : super(key: key);
  final double deliveryFee;
  final double totalPriceWithoutFee;
  final double totalPriceWithFee;
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return ListView(
      children: [
        Container(
            alignment: AlignmentDirectional.centerStart,
            child: const AppBackButton()),
        const SizedBox(
          height: 30,
        ),
        Text(
          AppLocalizations.of(context)!.deliveryAddress,
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 30,
        ),
        const SelectAddress(),
        const SizedBox(
          height: 40,
        ),
        Text(
          AppLocalizations.of(context)!.paymentMethod,
          style: Theme.of(context).textTheme.headline5,
        ),
        const SizedBox(
          height: 15,
        ),
        RadioListTile(
          contentPadding: const EdgeInsets.all(20),
          value: true,
          groupValue: true,
          onChanged: (_) {},
          title: Text(AppLocalizations.of(context)!.paymentOnArrival),
          subtitle: Text(AppLocalizations.of(context)!.payWithCash),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.deliveryFee,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "${deliveryFee.translate(locale)} ${AppLocalizations.of(context)!.egp}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.subtotal,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "${totalPriceWithoutFee.translate(locale)} ${AppLocalizations.of(context)!.egp}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.total,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "${totalPriceWithFee.translate(locale)} ${AppLocalizations.of(context)!.egp}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              onPressed: () {
                context.read<PaymentCubit>().submitPayment();
              },
              child: Text(AppLocalizations.of(context)!.processToPayment)),
        )
      ],
    );
  }
}
