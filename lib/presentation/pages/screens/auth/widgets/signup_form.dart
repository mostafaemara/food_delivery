import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
            child: Text(
              AppLocalizations.of(context)!.emailAddress,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.enterEmail),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
            child: Text(
              AppLocalizations.of(context)!.password,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.enterPassword),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
            child: Text(
              AppLocalizations.of(context)!.confirmPassword,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.confirmPassword),
          ),
        ],
      ),
    );
  }
}
