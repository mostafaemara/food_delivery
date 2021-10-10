import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/pages/addresses/widgets/addresses_list_item.dart';

import 'widgets/addresses_app_bar.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: const [
          AddressesAppBar(),
          SizedBox(
            height: 20,
          ),
          AddressesListItem()
        ]),
      ),
    );
  }
}
