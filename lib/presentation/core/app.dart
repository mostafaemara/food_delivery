import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/domain/entities/config/locale.dart' as domain;
import 'package:food_delivery_app/domain/entities/config/theme.dart' as domain;
import 'package:food_delivery_app/presentation/auth/pages/auth_screen.dart';
import 'package:food_delivery_app/presentation/config/bloc/config_bloc.dart';
import 'package:food_delivery_app/presentation/pages/screens/forgot_password/forgot_password_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/main_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/onboard/onboard_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/splash/splash_screen.dart';

import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:food_delivery_app/presentation/styles/app_themes.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigCubit, ConfigState>(
      builder: (context, state) {
        return MaterialApp(
          locale: state.locale.fold(
              () => null,
              (l) => l.locale == domain.Locales.english
                  ? const Locale("en")
                  : const Locale("ar")),
          title: 'Food Delivery App',
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          theme: state.theme.fold(
              () => AppTheme.lightTheme,
              (t) => t.themeMode == domain.ThemeMode.light
                  ? AppTheme.lightTheme
                  : AppTheme.darkTheme),
          home: const OnBoardScreen(),
          routes: {
            Routes.authScreen: (context) => const AuthScreen(),
            Routes.forgotPasswordScreen: (context) =>
                const ForgotPasswordScreen(),
            Routes.mainScreen: (context) => const MainScreen()
          },
        );
      },
    );
  }
}
