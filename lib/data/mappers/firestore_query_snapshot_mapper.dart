import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/category_meal.dart';
import 'package:food_delivery_app/data/models/meal.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

extension FSQueryMapper on QuerySnapshot<Map<String, dynamic>> {
  List<Meal> toMeals() {
    final List<Meal> meals = [];
    for (final doc in docs) {
      final Map<String, dynamic> map = {"id": doc.id}..addAll(doc.data());
      final meal = MealModel.fromMap(map);
      meals.add(meal);
    }
    return meals;
  }

  List<MealCategory> toMealCategories() {
    final List<MealCategory> categories = [];
    for (final doc in docs) {
      final Map<String, dynamic> map = {"id": doc.id}..addAll(doc.data());

      final category = MealCategoryModel.fromMap(map);
      categories.add(category);
    }
    return categories;
  }
}
