import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/cart_item.dart';

import 'package:food_delivery_app/domain/entities/cart_item.dart';

import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<ServerFailure, Unit>> addCartItem(
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
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, Unit>> deleteCartItem(
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
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, List<CartItem>>> getCartitems(String uid) async {
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
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<ServerFailure, Unit>> updateCartItem(
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
      return left(ServerFailure());
    }
  }
}
