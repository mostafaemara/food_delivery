import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';

abstract class FavoritesRepositoryInterface {
  Future<Either<Failure, List<Favorite>>> fetchFavorites(String uid);
  Future<Either<Failure, Unit>> addToFavorites(String mealId, String uid);
  Future<Either<Failure, Unit>> removeFromFavorites(String mealId, String uid);
}
