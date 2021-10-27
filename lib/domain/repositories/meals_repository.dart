import 'package:dartz/dartz.dart';

import "../failures/failure.dart";
import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/entities/meal_category.dart';

abstract class MealsRepository {
  Future<Either<ServerFailure, List<Meal>>> getPopularMeals();
  Future<Either<ServerFailure, List<Meal>>> getMealsByCategory(
      String categoryId);

  Future<Either<ServerFailure, List<MealCategory>>> getCategories();
}
