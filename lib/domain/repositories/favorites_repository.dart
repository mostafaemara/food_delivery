import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/meal.dart';
import "../failures/failure.dart";

abstract class FavoritesRepository {
  Future<Either<ServerFailure, List<Meal>>> fetchFavorites(String uid);
  Future<Either<ServerFailure, Unit>> addToFavorites(String mealId, String uid);
  Future<Either<ServerFailure, Unit>> removeFromFavorites(
      String mealId, String uid);
}
