import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FormSubTitle extends StatelessWidget {
  const FormSubTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        AppLocalizations.of(context)!.goodToSeeYouAgain,
        style: Theme.of(context).textTheme.bodyText2!,
      ),
    );
  }
}
