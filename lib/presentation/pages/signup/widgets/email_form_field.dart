import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "../../../helpers/form_helpers.dart";

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupCubit = context.watch<SignupCubit>();
    final state = signupCubit.state;
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
          onChanged: signupCubit.emailChanged,
          decoration: InputDecoration(
              errorText: state.emailInput
                  .isTouchedGetErrorOrNull()
                  ?.convertErrorToLocaleString(context),
              hintText: AppLocalizations.of(context)!.enterEmail),
        ),
      ],
    );
  }
}
