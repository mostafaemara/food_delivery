import 'package:get_it/get_it.dart';

import 'data/repositories/auth/firebase_auth_repository.dart';
import 'data/repositories/config/sp_locale_repository.dart';
import 'domain/repositories/auth/auth.dart';
import 'domain/repositories/config/locale_repository_interface.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerSingleton<AuthRepositoryInterface>(FirebaseAuthRepository());
  locator.registerSingleton<LocaleRepositoryInterface>(SPLocaleRepository());
  //  locator.registerSingleton<ThemeRepositoryInterface>(ThemeRepositoryInterface());
}
