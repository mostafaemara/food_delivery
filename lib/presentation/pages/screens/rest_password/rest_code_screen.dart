import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/pages/screens/rest_password/widgets/rest_code_form.dart';

class RestCodeScreen extends StatelessWidget {
  const RestCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  alignment: AlignmentDirectional.bottomEnd,
                  padding: const EdgeInsetsDirectional.only(end: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(AppLocalizations.of(context)!.cancel))),
              const Spacer(),
              RestCodeForm(),
              const Spacer(
                flex: 2,
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context)!.restPassword),
                  style:
                      Theme.of(context).elevatedButtonTheme.style!.copyWith(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
