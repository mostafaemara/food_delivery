import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormButton extends StatelessWidget {
  const LoginFormButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () => loginCubit.loginWithEmailAndPassword(),
        child: Text(AppLocalizations.of(context)!.login),
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
      ),
    );
  }
}
