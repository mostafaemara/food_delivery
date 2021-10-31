import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FormSubTitle extends StatelessWidget {
  const FormSubTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        AppLocalizations.of(context)!.goodToSeeYouAgain,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
    );
  }
}
