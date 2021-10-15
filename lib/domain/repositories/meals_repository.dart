import 'package:dartz/dartz.dart';

import "../failures/failure.dart";
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

abstract class MealsRepository {
  Future<Either<AuthFailure, List<Meal>>> getPopularMeals();
  Future<Either<AuthFailure, List<Meal>>> getMealsByCategory(String categoryId);

  Future<Either<AuthFailure, List<MealCategory>>> getCategories();
}
