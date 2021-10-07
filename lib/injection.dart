import 'package:food_delivery_app/data/repositories/firestore_cart_repository.dart';
import 'package:food_delivery_app/data/repositories/firestore_favorites_repository.dart';
import 'package:food_delivery_app/data/repositories/firestore_meals_repository.dart';
import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/firebase_auth_repository.dart';
import 'data/repositories/firestore_profile_repository.dart';
import 'data/repositories/sp_first_time_repository.dart';
import 'data/repositories/sp_locale_repository.dart';
import 'data/repositories/sp_theme_repository.dart';
import 'domain/repositories/auth.dart';
import 'domain/repositories/cart_repository_interface.dart';
import 'domain/repositories/first_time_repository_interface.dart';
import 'domain/repositories/locale_repository_interface.dart';
import 'domain/repositories/meals_repository.dart';
import 'domain/repositories/profile_repository_interface.dart';
import 'domain/repositories/theme_repository_interface.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerSingleton<AuthRepositoryInterface>(FirebaseAuthRepository());
  locator.registerSingleton<LocaleRepositoryInterface>(SPLocaleRepository());
  locator.registerSingleton<ThemeRepositoryInterface>(SPThemeRepository());
  locator
      .registerSingleton<FirstTimeRepositoryInterface>(SPFirstTimeRepository());
  locator
      .registerSingleton<MealsRepositoryInterface>(FirestoreMealsRepository());
  locator.registerSingleton<FavoritesRepositoryInterface>(
      FirestoreFavoritesRepository());
  locator.registerSingleton<CartRepositoryInterface>(FirestoreCartRepository());
  locator.registerSingleton<ProfileRepositoryInterface>(
      FirestoreProfileRepository());
}
