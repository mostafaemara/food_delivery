import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FormTitle extends StatelessWidget {
  const FormTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        AppLocalizations.of(context)!.loginToMyAccount,
        style: Theme.of(context).textTheme.headline5!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground),
      ),
    );
  }
}
