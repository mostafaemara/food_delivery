import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';

import 'package:food_delivery_app/presentation/routes/routes.dart';

import 'favorite_button.dart';

class MealListItem extends StatelessWidget {
  final Meal meal;
  MealListItem({
    Key? key,
    required this.meal,
  }) : super(key: Key(meal.id));

  @override
  Widget build(BuildContext context) {
    final isArabic = Localizations.localeOf(context).languageCode == "ar";
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
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(Routes.mealDetailsPage, arguments: meal);
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
                isArabic ? meal.title.arabic : meal.title.english,
                style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                isArabic
                    ? meal.shortDescription.arabic
                    : meal.shortDescription.english,
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  FavoriteButton(
                    favorite: Favorite(
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
