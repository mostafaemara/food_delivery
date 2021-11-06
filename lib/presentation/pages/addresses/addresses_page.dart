import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'widgets/addresses_app_bar.dart';
import 'widgets/body.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({Key? key, required this.isSelectionModeActive})
      : super(key: key);
  final bool isSelectionModeActive;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            const AddressesAppBar(),
            const SizedBox(
              height: 20,
            ),
            Provider.value(
              value: isSelectionModeActive,
              child: const Expanded(child: Body()),
            ),
          ]),
        ),
      ),
    );
  }
}
