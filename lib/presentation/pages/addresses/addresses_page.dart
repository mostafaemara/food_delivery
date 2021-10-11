import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';

import 'package:food_delivery_app/presentation/pages/addresses/widgets/addresses_list_item.dart';

import 'widgets/addresses_app_bar.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          const AddressesAppBar(),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddressesCubit, AddressesState>(
            builder: (context, state) => Column(
                children: List.generate(
                        state.addresses.length,
                        (index) =>
                            AddressesListItem(address: state.addresses[index]))
                    .toList()),
          )
        ]),
      ),
    );
  }
}
