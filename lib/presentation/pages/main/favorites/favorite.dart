import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';

import 'widgets/favorite_list.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: BlocConsumer<FavoritesCubit, FavoritesState>(
              builder: (context, state) {
                if (state.status == FavoritesStatus.loaded) {
                  return FavoriteList(
                    favorites: state.favorites,
                  );
                }
                if (state.status == FavoritesStatus.notAuth) {
                  return const Center(
                    child: Text("Login to Show Favorites!"),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              listener: (context, state) {},
            )));
  }
}
