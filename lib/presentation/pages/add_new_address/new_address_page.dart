import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import 'package:food_delivery_app/presentation/bloc/address_form/newaddressform_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/new_address_app_bar.dart';
import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/new_address_form.dart';

import '../../../injection.dart';

class NewAddressPage extends StatefulWidget {
  const NewAddressPage({Key? key}) : super(key: key);

  @override
  _NewAddressPageState createState() => _NewAddressPageState();
}

class _NewAddressPageState extends State<NewAddressPage> {
  @override
  Widget build(BuildContext context) {
    final uid = context.read<AuthBloc>().state.when(
          authenticated: (user) => user.id,
          unAuthenticated: () {
            throw Exception("app should crash");
          },
        );
    return Scaffold(
      body: ListView(
        children: [
          const NewAddressesAppBar(),
          BlocProvider(
            child: const NewAddressForm(),
            create: (context) => NewaddressformCubit(
                addressRepo: locator<AddressRepository>(),
                addressesCubit: BlocProvider.of<AddressesCubit>(context),
                uid: uid),
          )
        ],
      ),
    );
  }
}
