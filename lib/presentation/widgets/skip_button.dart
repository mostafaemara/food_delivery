import 'package:flutter/material.dart';
import "package:auto_route/auto_route.dart";
import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.navigateTo(const MainRoute());
        },
        child: Text(
          AppLocalizations.of(context)!.skip,
        ));
  }
}
