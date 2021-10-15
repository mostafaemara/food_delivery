import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/address_form/newaddressform_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../helpers/form_helpers.dart";

class BuildingFormField extends StatelessWidget {
  const BuildingFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = context.watch<NewaddressformCubit>();
    final state = newAdressCubit.state;
    return TextFormField(
      onChanged: newAdressCubit.buildingChanged,
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.building,
        errorText: state.buildingInput
            .isTouchedGetErrorOrNull()
            ?.convertErrorToLocaleString(context),
      ),
    );
  }
}
