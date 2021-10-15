import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/config/config_bloc.dart';

import "../../../../domain/entities/theme.dart" as domain;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSelectionDailog extends StatelessWidget {
  const ThemeSelectionDailog({Key? key, required this.selectedThemeMode})
      : super(key: key);
  final domain.ThemeMode selectedThemeMode;

  @override
  Widget build(BuildContext context) {
    final configCubit = BlocProvider.of<ConfigCubit>(context);
    return Dialog(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.headline6,
            ),
            const Divider(),
            RadioListTile<domain.ThemeMode>(
              title: Text(AppLocalizations.of(context)!.light),
              value: domain.ThemeMode.light,
              groupValue: selectedThemeMode,
              onChanged: (value) {
                configCubit.selectTheme(domain.Theme(value!));
                Navigator.of(context).pop();
              },
            ),
            RadioListTile<domain.ThemeMode>(
              title: Text(AppLocalizations.of(context)!.dark),
              value: domain.ThemeMode.dark,
              groupValue: selectedThemeMode,
              onChanged: (value) {
                configCubit.selectTheme(domain.Theme(value!));
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
