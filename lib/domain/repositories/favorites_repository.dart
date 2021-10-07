import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';

abstract class FavoritesRepositoryInterface {
  Future<Either<AuthFailure, List<Favorite>>> fetchFavorites(String uid);
  Future<Either<AuthFailure, Unit>> addToFavorites(String mealId, String uid);
  Future<Either<AuthFailure, Unit>> removeFromFavorites(
      String mealId, String uid);
}
