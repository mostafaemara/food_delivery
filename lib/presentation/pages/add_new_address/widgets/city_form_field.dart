import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/address_form/newaddressform_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../helpers/form_helpers.dart";

class CityFormField extends StatelessWidget {
  const CityFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = context.watch<NewaddressformCubit>();
    final state = newAdressCubit.state;
    return TextFormField(
      onChanged: newAdressCubit.cityChange,
      decoration: InputDecoration(
          errorText: state.cityInput
              .isTouchedGetErrorOrNull()
              ?.convertErrorToLocaleString(context),
          hintText: AppLocalizations.of(context)!.city),
    );
  }
}
