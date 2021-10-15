import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/injection.dart';

import 'domain/repositories/address_repository.dart';
import 'domain/repositories/auth_repository.dart';
import 'domain/repositories/cart_repository.dart';
import 'domain/repositories/favorites_repository.dart';

import 'domain/repositories/meals_repository.dart';
import 'presentation/app.dart';
import 'presentation/bloc/addresses/addresses_cubit.dart';
import 'presentation/bloc/auth/auth_bloc.dart';
import 'presentation/bloc/bloc_observer.dart';
import 'presentation/bloc/cart/cart_cubit.dart';
import 'presentation/bloc/config/config_bloc.dart';
import 'presentation/bloc/favorites/favorites_cubit.dart';
import 'presentation/bloc/home/home_cubit.dart';
import 'presentation/bloc/profile/profile_cubit.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  initializeDependencies();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      lazy: false,
      create: (context) => AuthBloc(locator<AuthRepository>()),
    ),
    BlocProvider(create: (context) => ConfigCubit()),
    BlocProvider(
      lazy: false,
      create: (context) => FavoritesCubit(
          locator<FavoritesRepository>(), BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      create: (context) => HomeCubit(locator<MealsRepository>()),
    ),
    BlocProvider(
      lazy: false,
      create: (context) => CartCubit(
          locator<CartRepository>(), BlocProvider.of<AuthBloc>(context)),
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
