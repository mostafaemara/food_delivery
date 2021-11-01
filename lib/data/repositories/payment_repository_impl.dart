import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/order.dart';

import 'package:food_delivery_app/domain/entities/payment_method.dart';

import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/entities/preorder.dart' as domain;
import 'package:food_delivery_app/domain/entities/order.dart' as domain;
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/payment_repository.dart';
import "../mappers/order_mapper.dart";
import 'package:cloud_functions/cloud_functions.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseFunctions functions = FirebaseFunctions.instance;
  final configCollection = "config";
  final feesDocumentId = "fees";
  final deliveryFeesFieldKey = "deliveryFees";
  final ordersCollection = "orders";

  @override
  Future<Either<PaymentFailure, domain.Preorder>> prepareOrder(
      String uid) async {
    try {
      final callable = functions.httpsCallable("prepareOrder");

      final result = await callable.call(<String, dynamic>{"uid": uid});

      final decodedJson = json.decode(result.data);

      return right(PreorderMapper.maptoPreorder(decodedJson));
    } catch (e) {
      return left(PaymentFailure());
    }
  }

  @override
  Future<Either<PaymentFailure, String>> submitPayment(
      {required String uid,
      required PaymentMethod paymentMethod,
      required String addressId}) async {
    try {
      final callable = functions.httpsCallable("submitPayment");

      final result = await callable.call(<String, dynamic>{
        "uid": uid,
        "paymentMethod": "cod",
        "addressId": addressId
      });

      final decodedJson = json.decode(result.data);

      return right(decodedJson["orderId"]);
    } catch (e) {
      return left(PaymentFailure());
    }
  }

  @override
  Future<Either<ServerFailure, List<domain.Order>>> getOrgers(
      String uid) async {
    try {
      final snapshot = await firestore
          .collection("orders")
          .where("uid", isEqualTo: uid)
          .get();
      return right(documentsToOrders(snapshot.docs));
    } catch (e) {
      return left(ServerFailure());
    }
  }
}

List<domain.Order> documentsToOrders(
    List<QueryDocumentSnapshot<Map<String, dynamic>>> documents) {
  List<domain.Order> orders = [];
  for (final document in documents) {
    orders.add(OrderModel.fromDocument(document));
  }
  return orders;
}
