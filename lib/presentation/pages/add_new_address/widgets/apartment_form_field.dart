import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/address_form/newaddressform_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../../helpers/form_helpers.dart";

class ApartmentFormField extends StatelessWidget {
  const ApartmentFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = context.watch<NewaddressformCubit>();
    final state = newAdressCubit.state;
    return TextFormField(
      onChanged: newAdressCubit.apartmentChanged,
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.apartment,
        errorText: state.apartmentInput
            .isTouchedGetErrorOrNull()
            ?.convertErrorToLocaleString(context),
      ),
    );
  }
}
