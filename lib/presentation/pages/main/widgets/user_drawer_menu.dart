import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

import 'address_drawer_menu_item.dart';
import 'drawer_close_button.dart';
import 'drawer_logout_button.dart';
import 'orders_drawer_menu_item.dart';
import 'privacy_policy_drawer_menu_item.dart';
import 'setting_drawer_menu_item.dart';
import 'user_account_header.dart';

class UserDrawerMenu extends StatelessWidget {
  const UserDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user =
        (BlocProvider.of<AuthBloc>(context).state as Authenticated).user;

    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsetsDirectional.only(top: 20, start: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: const DrawerCloseButton(),
            ),
            const SizedBox(
              height: 20,
            ),
            UserAccountHeader(
              email: user.email,
              userName: user.userName,
            ),
            const SizedBox(
              height: 20,
            ),
            const AddressDrawerMenuItem(),
            const OrdersDrawerMenuItem(),
            const SettingDrawerMenuItem(),
            const SizedBox(
              height: 80,
            ),
            const DrawerLogoutButton()
          ],
        ),
      ),
    );
  }
}
