import 'package:flutter/material.dart';

import 'package:food_delivery_app/presentation/pages/main/widgets/privacy_policy_drawer_menu_item.dart';
import 'package:food_delivery_app/presentation/pages/main/widgets/setting_drawer_menu_item.dart';

import 'drawer_close_button.dart';
import 'drawer_login_button.dart';
import 'user_account_header.dart';

class GuestDrawerMenu extends StatelessWidget {
  const GuestDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            const UserAccountHeader(
              email: "guest@guest.com",
              userName: "guest",
            ),
            const SizedBox(
              height: 20,
            ),
            const SettingDrawerMenuItem(),
            const SizedBox(
              height: 80,
            ),
            const DrawerLoginButton()
          ],
        ),
      ),
    );
  }
}
