import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/payment_method.dart';
import 'package:food_delivery_app/domain/entities/preorder.dart' as domain;
import 'package:food_delivery_app/domain/failures/failure.dart';

abstract class PaymentRepository {
  Future<Either<PaymentFailure, domain.Preorder>> prepareOrder(String uid);
  Future<Either<PaymentFailure, String>> submitPayment(
      {required String uid,
      required PaymentMethod paymentMethod,
      required String addressId});
  //Future<Either<PaymentFailure, List<domain.Preorder>>> getOrders(String uid);
}
