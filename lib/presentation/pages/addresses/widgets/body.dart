import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/presentation/pages/addresses/widgets/addresses_list.dart';

import 'empty_addresses.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressesCubit, AddressesState>(
        builder: (context, state) => state.addresses.isEmpty
            ? const EmptyAddresses()
            : AddressList(
                addresses: state.addresses,
              ));
  }
}
