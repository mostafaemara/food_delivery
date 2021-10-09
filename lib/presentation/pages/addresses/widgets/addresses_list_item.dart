import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddressesListItem extends StatelessWidget {
  const AddressesListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Calista Wise 7292 Dictum AvSan Antonio MI 47096",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
              "${AppLocalizations.of(context)!.mobilePhoneNumber}: 01113466225",
              style: Theme.of(context).textTheme.caption),
          const Divider()
        ],
      ),
    );
  }
}
