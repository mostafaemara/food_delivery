import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "../../../helpers/form_helpers.dart";

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupCubit = context.watch<SignupCubit>();
    final state = signupCubit.state;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
          child: Text(
            AppLocalizations.of(context)!.password,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        TextFormField(
          obscureText: true,
          onChanged: signupCubit.passwordChanged,
          decoration: InputDecoration(
              errorText: state.passwordInput
                  .isTouchedGetErrorOrNull()
                  ?.convertErrorToLocaleString(context),
              hintText: AppLocalizations.of(context)!.enterPassword),
        ),
      ],
    );
  }
}
