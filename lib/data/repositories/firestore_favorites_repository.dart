import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
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

  @override
  Future<Either<Failure, List<String>>> fetchFavorites(String uid) async {
    try {
      final snapshot = await firestore
          .collection("users")
          .doc(uid)
          .collection("favorites")
          .get();
      if (snapshot.docs.isEmpty) {
        return right([]);
      }
      List<String> favorites = [];
      for (var doc in snapshot.docs) {
        favorites.add(doc.id);
      }

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
