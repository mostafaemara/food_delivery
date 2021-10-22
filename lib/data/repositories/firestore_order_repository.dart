import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/entities/preorder.dart' as domain;
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/payment_repository.dart';
import "../mappers/order_mapper.dart";
import 'package:cloud_functions/cloud_functions.dart';

class FirestoreOrderRepository implements PaymentRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseFunctions functions = FirebaseFunctions.instance;
  final configCollection = "config";
  final feesDocumentId = "fees";
  final deliveryFeesFieldKey = "deliveryFees";
  final ordersCollection = "orders";

  @override
  Future<Either<PaymentFailure, List<domain.Preorder>>> getOrders(
      String uid) async {
    try {
      final snapShot = await firestore
          .collection(ordersCollection)
          .where("uid", isEqualTo: uid)
          .get();
      return right([]);
    } catch (e) {
      return left(PaymentFailure());
    }
  }

  @override
  Future<Either<PaymentFailure, domain.Preorder>> prepareOrder(
      String uid) async {
    try {
      final callable = functions.httpsCallable("prepareOrder");

      final result = await callable.call(<String, dynamic>{"uid": uid});

      final decodedJson = json.decode(result.data);

      return right(OrderMapper.maptoPreorder(decodedJson));
    } catch (e) {
      return left(PaymentFailure());
    }
  }
}
