import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        child: Text(AppLocalizations.of(context)!.loginToMyAccount),
        onPressed: () {
          context.navigateTo(const LoginRoute());
        },
      ),
    );
  }
}
