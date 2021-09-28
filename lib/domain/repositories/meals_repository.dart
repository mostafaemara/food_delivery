import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

abstract class MealsRepositoryInterface {
  Future<Either<Failure, List<Meal>>> getPopularMeals();
  Future<Either<Failure, List<Meal>>> getMealsByCategory(String categoryId);
  Future<Either<Failure, List<Meal>>> getMealsByIds(List<String> mealsIds);
  Future<Either<Failure, List<MealCategory>>> getCategories();
}
