import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/presentation/bloc/favorite_meals/cubit/favoritemeals_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:food_delivery_app/presentation/pages/main/widgets/favorite_list_item.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  void initState() {
    final favs = context.read<FavoritesCubit>().state.favorites;
    context.read<FavoritemealsCubit>().init(favs);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoritemealsCubit, FavoriteMealsState>(
      builder: (context, state) {
        if (state is FavoriteMealsLoaded) {
          return ListView.builder(
            itemCount: state.favMeals.length,
            itemBuilder: (context, index) =>
                FavoriteListItem(meal: state.favMeals[index]),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
      listener: (context, state) {},
    );
  }
}
