import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/presentation/pages/addresses/widgets/address_list_item.dart';

class AddressList extends StatelessWidget {
  const AddressList({
    Key? key,
    required this.addresses,
  }) : super(key: key);
  final List<Address> addresses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: addresses.length,
      itemBuilder: (context, index) => AddressListItem(
        address: addresses[index],
      ),
    );
  }
}
