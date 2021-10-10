import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart' as domain;
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/presentation/routes/router.gr.dart';
import "../helpers/translators.dart";
import 'favorite_button.dart';

class MealListItem extends StatelessWidget {
  final Meal meal;
  MealListItem({
    Key? key,
    required this.meal,
  }) : super(key: Key(meal.id));

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  //Navigate to Meal Details page return True if User Add Item to Cart
                  context.router.push<bool>(MealDetailsRoute(meal: meal));
                  // If returned Value was True GoTo Cart Tab
                },
                child: Image.network(
                  meal.imageUrl,
                  height: 112,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                meal.title.translate(locale),
                style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                meal.shortDescription.translate(locale),
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  FavoriteButton(
                    favorite: domain.Favorite(
                        title: meal.title,
                        mealId: meal.id,
                        imageUrl: meal.imageUrl),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}