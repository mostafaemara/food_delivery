import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/config/config_bloc.dart';

import 'package:food_delivery_app/presentation/pages/setting/widgets/select_language_dialog.dart';
import 'package:food_delivery_app/presentation/pages/setting/widgets/theme_selection_dialog.dart';
import 'package:food_delivery_app/presentation/widgets/app_back_button.dart';
import "../../../../domain/entities/locale.dart" as domain;
import "../../../../domain/entities/theme.dart" as domain;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ConfigCubit, ConfigState>(
          builder: (context, state) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        const AppBackButton(),
                        const Spacer(),
                        Text(
                          AppLocalizations.of(context)!.settings,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const Spacer()
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => LanguageSelectionDailog(
                              selectedLocal: state.locale.locale),
                        );
                      },
                      title: Text(AppLocalizations.of(context)!.language),
                      subtitle: Text(
                        state.locale.locale == domain.Locales.arabic
                            ? AppLocalizations.of(context)!.arabic
                            : AppLocalizations.of(context)!.english,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => ThemeSelectionDailog(
                              selectedThemeMode: state.theme.themeMode),
                        );
                      },
                      title: Text(
                        AppLocalizations.of(context)!.theme,
                      ),
                      subtitle: Text(
                        state.theme.themeMode == domain.ThemeMode.dark
                            ? AppLocalizations.of(context)!.dark
                            : AppLocalizations.of(context)!.light,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}
