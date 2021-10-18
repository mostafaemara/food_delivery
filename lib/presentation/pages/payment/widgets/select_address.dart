import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/presentation/helpers/address_helper.dart';
import 'package:food_delivery_app/presentation/pages/payment/widgets/address.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'empty_address.dart';

class SelectAddress extends StatelessWidget {
  const SelectAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressesCubit, AddressesState>(
        builder: (context, state) {
      final selectedAddress = state.selectedAddress;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: selectedAddress.fold(() => const EmptyAddress(), (a) {
              final address = state.addresses.getAddressById(a);

              return Address(
                  formattedAddress: address.formattedString(),
                  phoneNumber: address.mobilePhoneNumber);
            }),
          ),
          TextButton(
            child: Text(AppLocalizations.of(context)!.change),
            onPressed: () {},
          )
        ],
      );
    });
  }
}
