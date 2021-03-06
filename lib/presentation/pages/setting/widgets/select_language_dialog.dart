import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/config/config_bloc.dart';

import "../../../../domain/entities/locale.dart" as domain;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageSelectionDailog extends StatelessWidget {
  const LanguageSelectionDailog({Key? key, required this.selectedLocal})
      : super(key: key);
  final domain.Locales selectedLocal;

  @override
  Widget build(BuildContext context) {
    final configCubit = BlocProvider.of<ConfigCubit>(context);
    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppLocalizations.of(context)!.chooseYourLanguage,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const Divider(),
            RadioListTile<domain.Locales>(
              activeColor: Theme.of(context).colorScheme.onSurface,
              title: Text(
                AppLocalizations.of(context)!.english,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
              value: domain.Locales.english,
              groupValue: selectedLocal,
              onChanged: (value) {
                configCubit.selectLocale(domain.Locale(value!));
                Navigator.of(context).pop();
              },
            ),
            RadioListTile<domain.Locales>(
              activeColor: Theme.of(context).colorScheme.onSurface,
              title: Text(
                AppLocalizations.of(context)!.arabic,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSurface),
              ),
              value: domain.Locales.arabic,
              groupValue: selectedLocal,
              onChanged: (value) {
                configCubit.selectLocale(domain.Locale(value!));
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
