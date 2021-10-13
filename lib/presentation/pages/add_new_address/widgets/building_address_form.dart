import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/application/bloc/address_form/newaddressform_cubit.dart';

class BuildingAddressForm extends StatelessWidget {
  const BuildingAddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = BlocProvider.of<NewaddressformCubit>(context);
    final state = newAdressCubit.state;
    return Column(
      children: [
        TextFormField(
          onChanged: newAdressCubit.buildingChanged,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.building,
            errorText: state.building.fold(
                (error) => error.when(empty: () => "Field required!"),
                (r) => null),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
          onChanged: newAdressCubit.floorChanged,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.floor,
            errorText: state.floor.fold(
                (error) => error.when(empty: () => "Field required!"),
                (r) => null),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
          onChanged: newAdressCubit.apartmentChanged,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.apartment,
            errorText: state.apartment.fold(
                (error) => error.when(empty: () => "Field required!"),
                (r) => null),
          ),
        ),
      ],
    );
  }
}
