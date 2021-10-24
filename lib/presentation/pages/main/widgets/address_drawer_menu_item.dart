import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddressDrawerMenuItem extends StatelessWidget {
  const AddressDrawerMenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.router.push(AddressesRoute(isSelectionModeActive: false));
      },
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        "assets/icons/profile.png",
        width: 24,
        height: 24,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      title: Text(
        AppLocalizations.of(context)!.addresses,
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
    );
  }
}
