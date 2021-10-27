import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrdersDrawerMenuItem extends StatelessWidget {
  const OrdersDrawerMenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        "assets/icons/work.png",
        width: 24,
        height: 24,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      title: Text(
        AppLocalizations.of(context)!.orders,
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
    );
  }
}
