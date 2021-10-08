import 'package:flutter/material.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

import 'category_list_item.dart';

class CategoryList extends StatelessWidget {
  final List<MealCategory> categories;

  const CategoryList({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryListItem(
          category: categories[index],
        );
      },
    );
  }
}
