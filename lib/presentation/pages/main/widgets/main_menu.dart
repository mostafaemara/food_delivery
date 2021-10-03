import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:provider/src/provider.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

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
            Container(
                alignment: AlignmentDirectional.centerStart,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(88),
                  child: Image.asset(
                    "assets/images/avatar.png",
                    fit: BoxFit.cover,
                    height: 88,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Text(
              "User Name",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "email@example.com",
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                "assets/icons/profile.png",
                width: 24,
                height: 24,
              ),
              title: Text(AppLocalizations.of(context)!.myProfile),
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
