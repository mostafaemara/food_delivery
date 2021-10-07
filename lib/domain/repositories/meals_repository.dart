import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

abstract class MealsRepositoryInterface {
  Future<Either<AuthFailure, List<Meal>>> getPopularMeals();
  Future<Either<AuthFailure, List<Meal>>> getMealsByCategory(String categoryId);

  Future<Either<AuthFailure, List<MealCategory>>> getCategories();
}
