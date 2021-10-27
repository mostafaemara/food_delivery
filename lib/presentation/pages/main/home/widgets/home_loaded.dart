import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

import 'category_list.dart';
import 'popular_list.dart';

class HomeLoaded extends StatelessWidget {
  const HomeLoaded(
      {Key? key, required this.categories, required this.popularMeals})
      : super(key: key);
  final List<MealCategory> categories;
  final List<Meal> popularMeals;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.enjoyDeliciousFood,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 180,
            child: CategoryList(
              categories: categories,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.popular,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 260,
            child: PopularList(
              meals: popularMeals,
            ),
          )
        ],
      ),
    );
  }
}
