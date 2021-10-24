import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../helpers/form_helpers.dart";

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.watch<LoginCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 8, start: 20),
          child: Text(
            AppLocalizations.of(context)!.password,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
        TextFormField(
          onChanged: loginCubit.passwordChanged,
          obscureText: true,
          decoration: InputDecoration(
              errorText: loginCubit.state.passwordInput
                  .isTouchedGetErrorOrNull()
                  ?.convertErrorToLocaleString(context),
              hintText: AppLocalizations.of(context)!.enterPassword),
        ),
      ],
    );
  }
}
