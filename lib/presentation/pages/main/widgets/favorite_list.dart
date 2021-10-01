import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';

import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:food_delivery_app/presentation/pages/main/widgets/favorite_list_item.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({
    Key? key,
    required this.favorites,
  }) : super(key: key);
  final List<Favorite> favorites;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (context, index) =>
              FavoriteListItem(favorite: favorites[index]),
        );
      },
      listener: (context, state) {},
    );
  }
}
