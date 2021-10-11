import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddressSelectionFormField extends StatelessWidget {
  final void Function(AddressType? type) onChanged;
  final AddressType selectedAddressType;
  const AddressSelectionFormField({
    Key? key,
    required this.onChanged,
    required this.selectedAddressType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<AddressType>(
        value: selectedAddressType,
        onChanged: onChanged,
        items: [
          DropdownMenuItem(
            value: AddressType.building,
            child: Text(AppLocalizations.of(context)!.building),
          ),
          DropdownMenuItem(
            value: AddressType.villa,
            child: Text(AppLocalizations.of(context)!.villa),
          ),
        ]);
  }
}

enum AddressType { building, villa }
