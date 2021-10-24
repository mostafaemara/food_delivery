import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SettingDrawerMenuItem extends StatelessWidget {
  const SettingDrawerMenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        ZoomDrawer.of(context)!.close();

        context.navigateTo(const SettingRoute());
      },
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        "assets/icons/settings.png",
        width: 24,
        height: 24,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      title: Text(
        AppLocalizations.of(context)!.settings,
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
    );
  }
}
