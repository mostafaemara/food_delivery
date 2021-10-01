import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/cart_item.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/cart_repository_interface.dart';

class FirestoreCartRepository implements CartRepositoryInterface {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, Unit>> addCartItem(String id, String uid) async {
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> deleteCartItem(String id, String uid) {
    // TODO: implement deleteCartItem
    throw UnimplementedError();
  }

  Future<List<CartItem>> fetchCartItemsByIds(List<String> ids) async {
    List<CartItem> items = [];
    for (final id in ids) {
      final snapshot = await firestore.collection("meals").doc(id).get();
      final Map<String, dynamic> map = {"id": snapshot.id}
        ..addAll(snapshot.data()!);
      items.add(CartItemModel.fromMap(map));
    }
    return items;
  }

  @override
  Future<Either<Failure, List<CartItem>>> getCartitems(String uid) async {
    try {
      final snapshot =
          await firestore.collection("users").doc(uid).collection("cart").get();
      if (snapshot.docs.isEmpty) {}
      List<String> itemsIds = [];
      for (var doc in snapshot.docs) {
        itemsIds.add(doc.id);
      }
      return right([]);
      // final favorites = await fetchFavoritesByIds(favoriteIds);

      //   return right(favorites);
    } catch (e) {
      //   return left(ServerFailure());
    }
    return right([]);
  }
}
