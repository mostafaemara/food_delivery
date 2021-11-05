import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery_app/domain/entities/favorite.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';

class FavoriteButton extends StatelessWidget {
  final Meal favorite;
  FavoriteButton({
    Key? key,
    required this.favorite,
  }) : super(key: Key(favorite.id));

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        final isFav = state.maybeWhen(
            orElse: () => false,
            loaded: (favorites) => favorites.contains(favorite));

        return IconButton(
            constraints: const BoxConstraints(maxWidth: 18, maxHeight: 18),
            padding: EdgeInsets.zero,
            alignment: AlignmentDirectional.centerEnd,
            onPressed: () {
              BlocProvider.of<FavoritesCubit>(context).toggleFavorite(favorite);
            },
            icon: Image.asset(
              isFav
                  ? "assets/icons/heart_active.png"
                  : "assets/icons/heart.png",
              height: 18,
              width: 18,
            ));
      },
      listener: (context, state) {},
    );
  }
}
