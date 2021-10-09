import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import 'user_account_header.dart';

class UserDrawerMenu extends StatelessWidget {
  const UserDrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user =
        (BlocProvider.of<AuthBloc>(context).state as Authenticated).user;

    return Container(
      padding: const EdgeInsetsDirectional.only(top: 20, start: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                      onPressed: () {
                        ZoomDrawer.of(context)!.close();
                      },
                      icon: const Icon(Icons.close))),
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
            ListTile(
              onTap: () {
                context.router.push(const AddressesRoute());
              },
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "assets/icons/profile.png",
                width: 24,
                height: 24,
              ),
              title: Text(AppLocalizations.of(context)!.addresses),
            ),
            ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "assets/icons/work.png",
                width: 24,
                height: 24,
              ),
              title: Text(AppLocalizations.of(context)!.paymentMethod),
            ),
            ListTile(
              onTap: () {
                ZoomDrawer.of(context)!.close();

                context.navigateTo(const SettingRoute());
              },
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "assets/icons/settings.png",
                width: 24,
                height: 24,
              ),
              title: Text(AppLocalizations.of(context)!.settings),
            ),
            ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "assets/icons/chat.png",
                width: 24,
                height: 24,
              ),
              title: Text(AppLocalizations.of(context)!.help),
            ),
            ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "assets/icons/paper.png",
                width: 24,
                height: 24,
              ),
              title: Text(AppLocalizations.of(context)!.privacyPolicy),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
                height: 60,
                width: 120,
                child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.signOut());
                    },
                    child: Text(AppLocalizations.of(context)!.logout)))
          ],
        ),
      ),
    );
  }
}
