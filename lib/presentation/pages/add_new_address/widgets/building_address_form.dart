import 'package:flutter/material.dart';

import 'apartment_form_field.dart';
import 'building_from_field.dart';
import 'floor_form_field.dart';

class BuildingAddressForm extends StatelessWidget {
  const BuildingAddressForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BuildingFormField(),
        SizedBox(
          height: 30,
        ),
        FloorFormField(),
        SizedBox(
          height: 30,
        ),
        ApartmentFormField(),
      ],
    );
  }
}
