import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              onPrimary: Theme.of(context).colorScheme.onSurface,
              primary: Theme.of(context).colorScheme.surface),
          onPressed: () {
            //TODO:Google Sign in Button
          },
          icon: Image.asset(
            "assets/images/google_logo.png",
            height: 30,
            width: 30,
          ),
          label: Text(AppLocalizations.of(context)!.signInWithGoogle)),
    );
  }
}
