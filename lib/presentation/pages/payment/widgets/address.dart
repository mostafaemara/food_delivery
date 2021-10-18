import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Address extends StatelessWidget {
  const Address({
    Key? key,
    required this.formattedAddress,
    required this.phoneNumber,
  }) : super(key: key);

  final String formattedAddress;
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(formattedAddress),
        const Divider(),
        Text(
          "${AppLocalizations.of(context)!.mobilePhoneNumber}: $phoneNumber",
        ),
      ],
    );
  }
}
