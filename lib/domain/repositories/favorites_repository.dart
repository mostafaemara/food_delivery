import 'package:dartz/dartz.dart';
import "../failures/failure.dart";
import 'package:food_delivery_app/domain/entities/favorite.dart';

abstract class FavoritesRepository {
  Future<Either<AuthFailure, List<Favorite>>> fetchFavorites(String uid);
  Future<Either<AuthFailure, Unit>> addToFavorites(String mealId, String uid);
  Future<Either<AuthFailure, Unit>> removeFromFavorites(
      String mealId, String uid);
}
