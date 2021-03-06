import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import "package:auto_route/auto_route.dart";

class AddressListItem extends StatelessWidget {
  const AddressListItem({Key? key, required this.address}) : super(key: key);
  final Address address;

  @override
  Widget build(BuildContext context) {
    final isSelectionModeActive = context.read<bool>();
    return InkWell(
      onTap: () {
        if (isSelectionModeActive) {
          context.read<AddressesCubit>().selectAddress(address.id);
          context.router.pop();
        }
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${address.city}-${address.zone}-${address.street}  ",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                "${AppLocalizations.of(context)!.mobilePhoneNumber}: ${address.mobilePhoneNumber}",
                style: Theme.of(context).textTheme.caption),
            const Divider()
          ],
        ),
      ),
    );
  }
}
