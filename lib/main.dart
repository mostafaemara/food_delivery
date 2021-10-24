import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/injection.dart';

import 'presentation/app.dart';
import 'presentation/bloc/addresses/addresses_cubit.dart';
import 'presentation/bloc/auth/auth_bloc.dart';
import 'presentation/bloc/bloc_observer.dart';
import 'presentation/bloc/cart/cart_cubit.dart';
import 'presentation/bloc/config/config_bloc.dart';
import 'presentation/bloc/favorites/favorites_cubit.dart';
import 'presentation/bloc/home/home_cubit.dart';

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.android;
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  initializeDependencies();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      lazy: false,
      create: (context) => AuthBloc(),
    ),
    BlocProvider(create: (context) => ConfigCubit()),
    BlocProvider(
      lazy: false,
      create: (context) => FavoritesCubit(BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      create: (context) => HomeCubit(),
    ),
    BlocProvider(
      lazy: false,
      create: (context) => CartCubit(BlocProvider.of<AuthBloc>(context)),
    ),
    BlocProvider(
      lazy: false,
      create: (context) => AddressesCubit(
        BlocProvider.of<AuthBloc>(context),
      ),
    )
  ], child: FoodDeliveryApp()));
}
