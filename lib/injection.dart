import 'package:food_delivery_app/data/repositories/firestore_address_repository.dart';
import 'package:food_delivery_app/data/repositories/firestore_cart_repository.dart';
import 'package:food_delivery_app/data/repositories/firestore_favorites_repository.dart';
import 'package:food_delivery_app/data/repositories/firestore_meals_repository.dart';
import 'package:food_delivery_app/data/repositories/firestore_order_repository.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';
import 'package:food_delivery_app/domain/repositories/payment_repository.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/firebase_auth_repository.dart';
import 'data/repositories/firestore_profile_repository.dart';
import 'data/repositories/sp_first_time_repository.dart';
import 'data/repositories/sp_locale_repository.dart';
import 'data/repositories/sp_theme_repository.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/cart_repository.dart';
import 'domain/repositories/first_time_repository.dart';
import 'domain/repositories/locale_repository.dart';
import 'domain/repositories/meals_repository.dart';
import 'domain/repositories/profile_repository.dart';
import 'domain/repositories/theme_repository.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerSingleton<AuthRepository>(FirebaseAuthRepository());
  locator.registerSingleton<LocaleRepository>(SPLocaleRepository());
  locator.registerSingleton<ThemeRepository>(SPThemeRepository());
  locator.registerSingleton<FirstTimeRepository>(SPFirstTimeRepository());
  locator.registerSingleton<MealsRepository>(FirestoreMealsRepository());
  locator
      .registerSingleton<FavoritesRepository>(FirestoreFavoritesRepository());
  locator.registerSingleton<CartRepository>(FirestoreCartRepository());
  locator.registerSingleton<ProfileRepository>(FirestoreProfileRepository());
  locator.registerSingleton<AddressRepository>(FirestoreAdressRepository());
  locator.registerSingleton<PaymentRepository>(FirestoreOrderRepository());
}
