import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RestCodeForm extends StatelessWidget {
  const RestCodeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              AppLocalizations.of(context)!.forgotPasswordTitle,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              AppLocalizations.of(context)!.forgotPasswordSubtitle,
              style: Theme.of(context).textTheme.bodyText2!,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
            child: Text(
              AppLocalizations.of(context)!.emailAddress,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          //PinCodeTextField(appContext: context, length: null,)
        ],
      ),
    );
  }
}
