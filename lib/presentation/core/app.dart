import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/domain/auth/repositories/auth.dart';
import 'package:food_delivery_app/domain/auth/usecases/login_with_email.dart';
import 'package:food_delivery_app/domain/auth/usecases/login_with_google.dart';
import 'package:food_delivery_app/domain/auth/usecases/validate_email.dart';
import 'package:food_delivery_app/domain/auth/usecases/validate_password.dart';
import 'package:food_delivery_app/injection.dart';
import 'package:food_delivery_app/presentation/auth/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/auth/bloc/login/login_cubit.dart';
import 'package:food_delivery_app/presentation/auth/pages/auth_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/forgot_password/forgot_password_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/main/main_screen.dart';
import 'package:food_delivery_app/presentation/pages/screens/splash/splash_screen.dart';

import 'package:food_delivery_app/presentation/routes/routes.dart';
import 'package:food_delivery_app/presentation/styles/app_themes.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      child: MaterialApp(
        locale: Locale("en"),
        title: 'Food Delivery App',
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        theme: AppTheme.lightTheme,
        home: SplashScreen(),
        routes: {
          Routes.authScreen: (context) => const AuthScreen(),
          Routes.forgotPasswordScreen: (context) =>
              const ForgotPasswordScreen(),
          Routes.mainScreen: (context) => const MainScreen()
        },
      ),
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(locator<AuthRepositoryInterface>()),
        ),
        BlocProvider(
          create: (context) => LoginCubit(
              loginWithEmail:
                  LoginWithEmail(locator<AuthRepositoryInterface>()),
              loginWithGoogle:
                  LoginWithGoogle(locator<AuthRepositoryInterface>()),
              validateEmail: ValidateEmail(),
              validatePassword: ValidatePassword()),
        )
      ],
    );
  }
}
