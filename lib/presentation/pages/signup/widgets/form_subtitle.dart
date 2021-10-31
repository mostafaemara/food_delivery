import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FormSubtitle extends StatelessWidget {
  const FormSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        AppLocalizations.of(context)!.welcomeEnterYourDetails,
        style: Theme.of(context).textTheme.bodyText2!,
      ),
    );
  }
}
