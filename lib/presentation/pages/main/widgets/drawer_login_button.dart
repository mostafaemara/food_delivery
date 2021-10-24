import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "package:auto_route/auto_route.dart";
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class DrawerLoginButton extends StatelessWidget {
  const DrawerLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 120,
        child: ElevatedButton(
            onPressed: () {
              context.router.push(const LoginRoute());
              ZoomDrawer.of(context)!.close();
            },
            child: Text(AppLocalizations.of(context)!.login)));
  }
}
