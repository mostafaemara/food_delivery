import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/application/bloc/config/config_bloc.dart';

import 'package:food_delivery_app/presentation/routes/router.gr.dart';

import '../../domain/entities/theme.dart' as domain;
import '../../domain/entities/locale.dart' as domain;

import 'package:food_delivery_app/presentation/styles/app_themes.dart';

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
        // home: const SplashPage(),
        //   routes: {
        //     Routes.categoryPage: (context) => const CategoryPage(),
        //   Routes.authScreen: (context) => const AuthPage(),
        //   Routes.forgotPasswordScreen: (context) => const ForgotPasswordPage(),
        //   Routes.mainScreen: (context) => const MainPage(),
        //   Routes.onboardScreen: (context) => const OnBoardPage(),
        //   Routes.languageSelectionScreen: (context) =>
        //       const LanguageSelectionPage(),
        //   Routes.mealDetailsPage: (context) => const MealDetailsPage(),
        //   Routes.profilePage: (context) => const ProfilePage(),
        //   Routes.editeProfilePage: (context) => const EditeProfilePage(),
        //   Routes.settingProfile: (context) => const SettingPage(),
        // }, routeInformationParser: null, routerDelegate: null,
      ),
    );
  }
}
