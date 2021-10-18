import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/address_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'widgets/select_address.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
                alignment: AlignmentDirectional.centerStart,
                child: const AppBackButton()),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Delivery address",
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
              "Payment",
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
              title: Text("Pay on arrival"),
              subtitle: Text("Pay with cash/POS upon arrival "),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Fee",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "20 EGP",
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
                  "Subtotal",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "20 EGP",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "20 EGP",
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
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context)!.processToPayment)),
            )
          ],
        ),
      ),
    );
  }
}
