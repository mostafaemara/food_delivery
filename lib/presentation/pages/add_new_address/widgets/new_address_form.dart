import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/application/bloc/address_form/newaddressform_cubit.dart';

import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/building_address_form.dart';
import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/villa_address_form.dart';

import 'package:food_delivery_app/presentation/widgets/error_dialog.dart';

import 'address_selection_form_field.dart';

class NewAddressForm extends StatefulWidget {
  const NewAddressForm({Key? key}) : super(key: key);

  @override
  State<NewAddressForm> createState() => _NewAddressFormState();
}

class _NewAddressFormState extends State<NewAddressForm> {
  AddressType selectedAddressType = AddressType.building;
  void onAddressTypeChanged(AddressType? addressType) {
    setState(() {
      selectedAddressType = addressType!;
    });
  }

  void showErrorDialog(BuildContext context, String failure) {
    Navigator.of(context).pop();
    showDialog(
      context: context,
      builder: (context) => ErrorDialog(
        title: AppLocalizations.of(context)!.error,
        body: failure,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = BlocProvider.of<NewaddressformCubit>(context);
    return BlocConsumer<NewaddressformCubit, NewaddressformState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: newAdressCubit.cityChange,
              decoration: InputDecoration(
                  errorText: state.city.fold(
                      (error) => error.when(empty: () => "Field required!"),
                      (r) => null),
                  hintText: AppLocalizations.of(context)!.city),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: newAdressCubit.zoneChanged,
              decoration: InputDecoration(
                  errorText: state.zone.fold(
                      (error) => error.when(empty: () => "Field required!"),
                      (r) => null),
                  hintText: AppLocalizations.of(context)!.zone),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: newAdressCubit.streetChanged,
              decoration: InputDecoration(
                  errorText: state.street.fold(
                      (error) => error.when(empty: () => "Field required!"),
                      (r) => null),
                  hintText: AppLocalizations.of(context)!.street),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: newAdressCubit.phoneChange,
              decoration: InputDecoration(
                  errorText: state.phoneNumber.fold(
                      (error) => error.when(
                          empty: () => "Field required!",
                          invalid: () => "InValid mobile Number"),
                      (r) => null),
                  hintText: AppLocalizations.of(context)!.mobileNumber),
            ),
            const SizedBox(
              height: 30,
            ),
            AddressSelectionFormField(
              selectedAddressType: selectedAddressType,
              onChanged: newAdressCubit.addressTypeChanged,
            ),
            const SizedBox(
              height: 30,
            ),
            state.addressType == AddressType.building
                ? const BuildingAddressForm()
                : const VillaAddressForm(),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  newAdressCubit.submit();
                },
                child: Text(AppLocalizations.of(context)!.addNewAddress),
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      listener: (context, state) {},
    );
  }
}
