import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmptyAddress extends StatelessWidget {
  const EmptyAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Text(AppLocalizations.of(context)!.noSelectedAddress));
  }
}
