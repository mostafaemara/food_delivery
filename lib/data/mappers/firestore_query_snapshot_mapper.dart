import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/category_meal.dart';
import 'package:food_delivery_app/data/models/meal.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

extension FSQueryMapper on QuerySnapshot<Map<String, dynamic>> {
  List<Meal> toMeals() {
    final List<Meal> meals = [];
    for (final doc in docs) {
      final map = doc.data();
      map["id"] = doc.id;

      final meal = MealModel.fromMap(map);
      meals.add(meal);
    }
    return meals;
  }

  List<MealCategory> toMealCategories() {
    final List<MealCategory> categories = [];
    for (final doc in docs) {
      doc.data()["id"] = doc.id;
      final category = MealCategoryModel.fromMap(doc.data());
      categories.add(category);
    }
    return categories;
  }
}
