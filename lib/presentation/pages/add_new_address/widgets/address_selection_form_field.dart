import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/address_form/newaddressform_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressSelectionFormField extends StatelessWidget {
  const AddressSelectionFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = context.watch<NewaddressformCubit>();
    final addressType = newAdressCubit.state.addressType;
    return DropdownButtonFormField<AddressType>(
        value: addressType,
        onChanged: newAdressCubit.addressTypeChanged,
        items: [
          DropdownMenuItem(
            value: const AddressType.building(),
            child: Text(AppLocalizations.of(context)!.building),
          ),
          DropdownMenuItem(
            value: const AddressType.villa(),
            child: Text(AppLocalizations.of(context)!.villa),
          ),
        ]);
  }
}
