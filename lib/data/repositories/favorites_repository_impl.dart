import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/data/models/meal.dart';

import 'package:food_delivery_app/domain/entities/meal.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<ServerFailure, Unit>> addToFavorites(
      String mealId, String uid) async {
    try {
      await firestore
          .collection("users")
          .doc(uid)
          .collection("favorites")
          .doc(mealId)
          .set({});
      return right(unit);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, List<Meal>>> fetchFavorites(String uid) async {
    try {
      final snapshot = await firestore
          .collection("users")
          .doc(uid)
          .collection("favorites")
          .get();
      if (snapshot.docs.isEmpty) {
        return right([]);
      }
      List<String> favoriteIds = [];
      for (var doc in snapshot.docs) {
        favoriteIds.add(doc.id);
      }

      final favorites = await fetchFavoritesMealsByIds(favoriteIds);

      return right(favorites);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  Future<List<Meal>> fetchFavoritesMealsByIds(List<String> ids) async {
    List<Meal> favorites = [];
    for (final id in ids) {
      final snapshot = await firestore.collection("meals").doc(id).get();

      favorites.add(MealModel.fromDocument(snapshot));
    }
    return favorites;
  }

  @override
  Future<Either<ServerFailure, Unit>> removeFromFavorites(
      String mealId, String uid) async {
    try {
      await firestore
          .collection("users")
          .doc(uid)
          .collection("favorites")
          .doc(mealId)
          .delete();
      return right(unit);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
