import 'package:food_delivery_app/data/repositories/address_repository_impl.dart';
import 'package:food_delivery_app/data/repositories/cart_repository_impl.dart';
import 'package:food_delivery_app/data/repositories/favorites_repository_impl.dart';
import 'package:food_delivery_app/data/repositories/meals_repository_impl.dart';
import 'package:food_delivery_app/data/repositories/payment_repository_impl.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';
import 'package:food_delivery_app/domain/repositories/payment_repository.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/auth_repository_impl.dart';

import 'data/repositories/config_repository_impl.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/cart_repository.dart';
import 'domain/repositories/config_repository.dart';

import 'domain/repositories/meals_repository.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  locator.registerSingleton<ConfigRepository>(ConfigRepositoryImpl());

  locator.registerSingleton<MealsRepository>(MealsRepositoryImpl());
  locator.registerSingleton<FavoritesRepository>(FavoritesRepositoryImpl());
  locator.registerSingleton<CartRepository>(CartRepositoryImpl());

  locator.registerSingleton<AddressRepository>(AdressRepositoryImpl());
  locator.registerSingleton<PaymentRepository>(PaymentRepositoryImpl());
}
