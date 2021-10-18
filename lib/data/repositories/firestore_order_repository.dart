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
          .add(OrderMapper.toMap(order));

      return right(snapshot.id);
    } catch (e) {
      return left(OrderFailure());
    }
  }

  @override
  Future<Either<OrderFailure, List<domain.Order>>> getOrders(String uid) async {
    try {
      final snapShot = await firestore
          .collection(FirestoreCollections.orders)
          .where("uid", isEqualTo: uid)
          .get();
      return right(documentsToOrders(snapShot.docs));
    } catch (e) {
      return left(OrderFailure());
    }
  }

  List<domain.Order> documentsToOrders(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> documents) {
    List<domain.Order> orders = [];
    for (final document in documents) {
      orders.add(OrderMapper.firestoreDocToOrder(document));
    }
    return orders;
  }
}
