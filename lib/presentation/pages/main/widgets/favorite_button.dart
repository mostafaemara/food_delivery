import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';

class FavoriteButton extends StatelessWidget {
  final String mealId;
  FavoriteButton({
    Key? key,
    required this.mealId,
  }) : super(key: Key(mealId));

  @override
  Widget build(BuildContext context) {
    final uid =
        (BlocProvider.of<AuthBloc>(context).state as Authenticated).user.id;
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        final isFav = state.favorites.contains(mealId);
        print(isFav ? "Fav" : "not fav");
        return IconButton(
            constraints: const BoxConstraints(maxWidth: 18, maxHeight: 18),
            padding: EdgeInsets.zero,
            alignment: AlignmentDirectional.centerEnd,
            onPressed: () {
              BlocProvider.of<FavoritesCubit>(context)
                  .toggleFavorite(mealId, uid);
            },
            icon: Image.asset(
              isFav
                  ? "assets/icons/heart_active.png"
                  : "assets/icons/heart.png",
              height: 18,
              width: 18,
            ));
      },
      listener: (context, state) {
        print(state.failureOrNone.toString());
        print(state.favorites.toString());
      },
    );
  }
}
