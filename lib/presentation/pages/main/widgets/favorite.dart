import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/domain/repositories/meals_repository.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/favorite_meals/cubit/favoritemeals_cubit.dart';

import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:food_delivery_app/presentation/pages/main/widgets/favorite_list.dart';

import '../../../../injection.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FavoritemealsCubit(locator<MealsRepositoryInterface>()),
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocConsumer<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is Authenticated) {
                    return const FavoriteList();
                  } else {
                    return const Center(
                      child: Text("Please Login"),
                    );
                  }
                },
                listener: (context, state) {},
              ))),
    );
  }
}
