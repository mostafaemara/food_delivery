import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/profile/profile_cubit.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:provider/src/provider.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      builder: (context, state) {
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
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Theme.of(context).colorScheme.primary),
                  width: 80,
                  height: 80,
                  child: FittedBox(
                    child: Text(
                      "guest",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ),
                ),
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
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.profilePage);
                  },
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
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.signOut());
                        },
                        child: Text(AppLocalizations.of(context)!.logout)))
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
