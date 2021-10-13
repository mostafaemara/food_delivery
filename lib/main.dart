import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/injection.dart';

import 'package:food_delivery_app/presentation/core/app.dart';

import 'application/bloc/addresses/addresses_cubit.dart';
import 'application/bloc/auth/auth_bloc.dart';
import 'application/bloc/bloc_observer.dart';
import 'application/bloc/cart/cart_cubit.dart';
import 'application/bloc/config/config_bloc.dart';
import 'application/bloc/favorites/favorites_cubit.dart';
import 'application/bloc/home/home_cubit.dart';
import 'application/bloc/profile/profile_cubit.dart';
import 'domain/repositories/address_repository.dart';
import 'domain/repositories/auth.dart';
import 'domain/repositories/cart_repository_interface.dart';
import 'domain/repositories/favorites_repository.dart';

import 'domain/repositories/meals_repository.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  initializeDependencies();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      lazy: false,
      create: (context) => AuthBloc(locator<AuthRepositoryInterface>()),
    ),
    BlocProvider(create: (context) => ConfigCubit()),
    BlocProvider(
      lazy: false,
      create: (context) => FavoritesCubit(
          locator<FavoritesRepositoryInterface>(),
          BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      create: (context) => HomeCubit(locator<MealsRepositoryInterface>()),
    ),
    BlocProvider(
      lazy: false,
      create: (context) => CartCubit(locator<CartRepositoryInterface>(),
          BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      lazy: false,
      create: (context) => ProfileCubit(BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      lazy: false,
      create: (context) => AddressesCubit(
          authBloc: BlocProvider.of<AuthBloc>(context),
          addressRepo: locator<AddressRepository>()),
    )
  ], child: FoodDeliveryApp()));
}
