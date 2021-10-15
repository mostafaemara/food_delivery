import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        child: Text(AppLocalizations.of(context)!.createAccount),
        onPressed: () {
          context.navigateTo(const SignupRoute());
        },
      ),
    );
  }
}
