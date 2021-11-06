import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmptyAddresses extends StatelessWidget {
  const EmptyAddresses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/no_address.png"),
        const SizedBox(
          height: 30,
        ),
        Text(
          AppLocalizations.of(context)!.noAddressAddedYet,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
