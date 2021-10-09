import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';

class AddressesAppBar extends StatelessWidget {
  const AddressesAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppBackButton(),
        Text(AppLocalizations.of(context)!.addresses),
        TextButton(
            onPressed: () {}, child: Text(AppLocalizations.of(context)!.add))
      ],
    );
  }
}
