import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/application/bloc/address_form/newaddressform_cubit.dart';

class VillaAddressForm extends StatelessWidget {
  const VillaAddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = BlocProvider.of<NewaddressformCubit>(context);
    final state = newAdressCubit.state;
    return Column(
      children: [
        TextFormField(
          onChanged: newAdressCubit.villaChanged,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.villa,
            errorText: state.villa.fold(
                (error) => error.when(empty: () => "Field required!"),
                (r) => null),
          ),
        ),
      ],
    );
  }
}
