import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/firestore_collections.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/entities/order.dart' as domain;
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/order_repository.dart';
import "../mappers/order_mapper.dart";

class FirestoreOrderRepository implements OrderRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<OrderFailure, String>> addOrder(domain.Order order) async {
    try {
      final snapshot = await firestore
          .collection(FirestoreCollections.orders)
          .add(order.toMap());

      return right(snapshot.id);
    } catch (e) {
      return left(OrderFailure());
    }
  }

  @override
  Future<Either<OrderFailure, List<Order>>> getOrders(String uid) async {
    final snapShot = await firestore
        .collection(FirestoreCollections.orders)
        .where("uid", isEqualTo: uid)
        .get();
        snapShot.docs
  }
}
