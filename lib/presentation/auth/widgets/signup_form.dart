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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              AppLocalizations.of(context)!.createAnAccount,
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
              AppLocalizations.of(context)!.welcomeEnterYourDetails,
              style: Theme.of(context).textTheme.bodyText2!,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
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
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
