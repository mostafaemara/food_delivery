import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/presentation/pages/screens/auth/auth_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/forgot_password/forgot_password_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/main_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/onboard/onboard_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/rest_password/rest_code_screen.dart';

import 'package:food_delivery_app/presentation/pages/screens/splash/splash_screen.dart';
import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:food_delivery_app/presentation/styles/app_themes.dart';

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("en"),
      title: 'Food Delivery App',
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: AppTheme.lightTheme,
      home: MainScreen(),
      routes: {
        Routes.authScreen: (context) => const AuthScreen(),
        Routes.forgotPasswordScreen: (context) => const ForgotPasswordScreen()
      },
    );
  }
}
