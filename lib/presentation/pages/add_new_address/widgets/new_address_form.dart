import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import 'package:food_delivery_app/presentation/widgets/loading_dialog.dart';

import "../../../helpers/form_helpers.dart";
import 'package:food_delivery_app/presentation/bloc/address_form/newaddressform_cubit.dart';

import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/building_address_form.dart';
import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/villa_address_form.dart';

import 'package:food_delivery_app/presentation/widgets/error_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'add_address_buttom.dart';
import 'address_selection_form_field.dart';
import 'city_form_field.dart';
import 'mobile_number_form_field.dart';
import 'street_form_field.dart';
import 'zone_form_field.dart';

class NewAddressForm extends StatefulWidget {
  const NewAddressForm({Key? key}) : super(key: key);

  @override
  State<NewAddressForm> createState() => _NewAddressFormState();
}

class _NewAddressFormState extends State<NewAddressForm> {
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

  void showLoadingDialog(
    BuildContext context,
  ) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const LoadingDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewaddressformCubit, NewAddressFormState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CityFormField(),
            const SizedBox(
              height: 30,
            ),
            const ZoneFormField(),
            const SizedBox(
              height: 30,
            ),
            const StreetFormField(),
            const SizedBox(
              height: 30,
            ),
            const MobileNumberFormField(),
            const SizedBox(
              height: 30,
            ),
            const AddressSelectionFormField(),
            const SizedBox(
              height: 30,
            ),
            state.addressType.when(
              building: () => const BuildingAddressForm(),
              villa: () => const VillaAddressForm(),
            ),
            const SizedBox(
              height: 30,
            ),
            const AddAddressButton(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      listener: (context, state) {
        state.submissionState.maybeWhen(
          orElse: () => null,
          submitting: () => showLoadingDialog(context),
          success: () => context
              .replaceRoute(AddressesRoute(isSelectionModeActive: false)),
          failed: (failure) => failure.maybeWhen(
            orElse: () {
              showErrorDialog(
                  context, AppLocalizations.of(context)!.serverError);
            },
          ),
        );
      },
    );
  }
}
