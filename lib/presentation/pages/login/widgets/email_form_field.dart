import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../helpers/form_helpers.dart";

class EmailFormField extends StatelessWidget {
  const EmailFormField({
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
            AppLocalizations.of(context)!.emailAddress,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        TextFormField(
          onChanged: loginCubit.emailChanged,
          decoration: InputDecoration(
              errorText: loginCubit.state.emailInput
                  .isTouchedGetErrorOrNull()
                  ?.convertErrorToLocaleString(context),
              hintText: AppLocalizations.of(context)!.enterEmail),
        ),
      ],
    );
  }
}
