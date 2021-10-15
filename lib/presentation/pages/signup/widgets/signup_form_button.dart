import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpFormButton extends StatelessWidget {
  const SignUpFormButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () {
          context.read<SignupCubit>().signUp();
        },
        child: Text(AppLocalizations.of(context)!.createAnAccount),
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
      ),
    );
  }
}
