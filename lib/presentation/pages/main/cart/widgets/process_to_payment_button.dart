import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:auto_route/auto_route.dart";
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class ProcessToPaymentButton extends StatelessWidget {
  const ProcessToPaymentButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
          onPressed: () {
            context.navigateTo(const PaymentRoute());
          },
          child: Text(AppLocalizations.of(context)!.processToPayment)),
    );
  }
}
