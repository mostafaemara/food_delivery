import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';

class FavoriteListItem extends StatelessWidget {
  final Meal favorite;
  FavoriteListItem({Key? key, required this.favorite})
      : super(key: Key(favorite.id));

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(MealDetailsRoute(meal: favorite));
      },
      child: Slidable(
        actionPane: const SlidableScrollActionPane(),
        secondaryActions: [
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.read<FavoritesCubit>().removeFavorite(favorite.id);
              },
              icon: Image.asset(
                "assets/icons/delete.png",
                height: 40,
              )),
        ],
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(15),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      favorite.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      favorite.title.english,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Text(
                      favorite.title.english,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
