import 'package:food_delivery_app/data/repositories/config/sp_theme_repository.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/auth/firebase_auth_repository.dart';
import 'data/repositories/config/sp_first_time_repository.dart';
import 'data/repositories/config/sp_locale_repository.dart';
import 'domain/repositories/auth/auth.dart';
import 'domain/repositories/config/first_time_repository_interface.dart';
import 'domain/repositories/config/locale_repository_interface.dart';
import 'domain/repositories/config/theme_repository_interface.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerSingleton<AuthRepositoryInterface>(FirebaseAuthRepository());
  locator.registerSingleton<LocaleRepositoryInterface>(SPLocaleRepository());
  locator.registerSingleton<ThemeRepositoryInterface>(SPThemeRepository());
  locator
      .registerSingleton<FirstTimeRepositoryInterface>(SPFirstTimeRepository());
}
