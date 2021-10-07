import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/cart_item.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/cart_repository_interface.dart';

class FirestoreCartRepository implements CartRepositoryInterface {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<AuthFailure, Unit>> addCartItem(
      String id, int quantity, String uid) async {
    try {
      await firestore
          .collection("users")
          .doc(uid)
          .collection("cart")
          .doc(id)
          .set({"quantity": quantity});
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteCartItem(
      String id, String uid) async {
    try {
      await firestore
          .collection("users")
          .doc(uid)
          .collection("cart")
          .doc(id)
          .delete();
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailure, List<CartItem>>> getCartitems(String uid) async {
    try {
      final snapshot =
          await firestore.collection("users").doc(uid).collection("cart").get();
      if (snapshot.docs.isEmpty) {
        return right([]);
      }
      final List<CartItem> items = [];
      for (var doc in snapshot.docs) {
        final mealSnapShot =
            await firestore.collection("meals").doc(doc.id).get();
        final Map<String, dynamic> map = {
          "id": doc.id,
          "quantity": doc.data()["quantity"]
        }..addAll(mealSnapShot.data()!);

        items.add(CartItemModel.fromMap(map));
      }
      return right(items);
      // final favorites = await fetchFavoritesByIds(favoriteIds);

      //   return right(favorites);
    } catch (e) {
      return left(const AuthFailure.serverFailure());
      //   return left(const Failure.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updateCartItem(
      String id, int quantity, String uid) async {
    try {
      await firestore
          .collection("users")
          .doc(uid)
          .collection("cart")
          .doc(id)
          .update({"quantity": quantity});
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }
}
