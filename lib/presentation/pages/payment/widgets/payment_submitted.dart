import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';

class PaymentSubmitted extends StatelessWidget {
  const PaymentSubmitted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            alignment: AlignmentDirectional.centerStart,
            child: const AppBackButton()),
        const Spacer(),
        Image.asset("assets/images/order_placed.png"),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          child: Text(
            AppLocalizations.of(context)!.yourOrderHasBeenPlaced,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    ));
  }
}
