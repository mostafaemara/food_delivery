import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/address_form/newaddressform_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newAdressCubit = context.read<NewaddressformCubit>();
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () {
          newAdressCubit.submit();
        },
        child: Text(AppLocalizations.of(context)!.addNewAddress),
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
      ),
    );
  }
}
