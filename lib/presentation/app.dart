import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import '../../domain/entities/theme.dart' as domain;
import '../../domain/entities/locale.dart' as domain;

import 'package:food_delivery_app/presentation/styles/app_themes.dart';

import 'bloc/config/config_bloc.dart';

class FoodDeliveryApp extends StatelessWidget {
  FoodDeliveryApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigCubit, ConfigState>(
      builder: (contextz, state) => MaterialApp.router(
        locale: state.locale.locale == domain.Locales.english
            ? const Locale("en")
            : const Locale("ar"),
        title: 'Food Delivery App',
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        theme: state.theme.themeMode == domain.ThemeMode.light
            ? AppTheme.lightTheme
            : AppTheme.darkTheme,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
      ),
    );
  }
}
