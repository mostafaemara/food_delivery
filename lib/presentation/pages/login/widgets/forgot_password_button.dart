import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        child: Text(
          AppLocalizations.of(context)!.forgotPassword,
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
        ),
        onPressed: () {
          //TODO:Forgot Password button
        },
      ),
    );
  }
}
