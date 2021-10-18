import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/entities/order.dart' as domain;
import 'package:food_delivery_app/domain/failures/failure.dart';

abstract class OrderRepository {
  Future<Either<OrderFailure, String>> addOrder(domain.Order order);
  Future<Either<OrderFailure, List<domain.Order>>> getOrders(String uid);
}
