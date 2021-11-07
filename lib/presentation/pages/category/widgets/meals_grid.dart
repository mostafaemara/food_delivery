import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/presentation/widgets/meal_list_item.dart';

class MealsGrid extends StatelessWidget {
  const MealsGrid({Key? key, required this.meals}) : super(key: key);

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 1 / 1.5,
          crossAxisCount: 2),
      itemCount: meals.length,
      itemBuilder: (context, index) => MealListItem(meal: meals[index]),
    );
  }
}
