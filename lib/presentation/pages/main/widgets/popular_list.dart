import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';

import 'meal_list_item.dart';

class PopularList extends StatelessWidget {
  PopularList({Key? key, required this.meals}) : super(key: key);

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => MealListItem(
        meal: meals[index],
      ),
    );
  }
}
