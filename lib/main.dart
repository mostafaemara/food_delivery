import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/injection.dart';
import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/cart/cart_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/config/config_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/home/home_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/profile/profile_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/signup/cubit/signup_cubit.dart';

import 'package:food_delivery_app/presentation/core/app.dart';

import 'domain/repositories/address_repository.dart';
import 'domain/repositories/auth.dart';
import 'domain/repositories/cart_repository_interface.dart';
import 'domain/repositories/favorites_repository.dart';
import 'domain/repositories/first_time_repository_interface.dart';
import 'domain/repositories/locale_repository_interface.dart';
import 'domain/repositories/meals_repository.dart';
import 'domain/repositories/theme_repository_interface.dart';

import 'presentation/bloc/auth/auth_bloc.dart';
import 'presentation/bloc/bloc_observer.dart';
import 'presentation/bloc/login/login_cubit.dart';

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
      create: (context) => SignupCubit(BlocProvider.of<AuthBloc>(context)),
    ),
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
