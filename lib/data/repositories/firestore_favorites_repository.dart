import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/data/models/favorite.dart';
import 'package:food_delivery_app/domain/entities/favorite.dart';
import 'package:food_delivery_app/domain/repositories/favorites_repository.dart';

class FirestoreFavoritesRepository implements FavoritesRepositoryInterface {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, Unit>> addToFavorites(
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

  Future<List<Favorite>> fetchFavoritesByIds(List<String> ids) async {
    List<Favorite> favorites = [];
    for (final id in ids) {
      final snapshot = await firestore.collection("meals").doc(id).get();
      final Map<String, dynamic> map = {"id": snapshot.id}
        ..addAll(snapshot.data()!);
      favorites.add(FavoriteModel.fromMap(map));
    }
    return favorites;
  }

  @override
  Future<Either<Failure, List<Favorite>>> fetchFavorites(String uid) async {
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

      final favorites = await fetchFavoritesByIds(favoriteIds);

      return right(favorites);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFromFavorites(
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
