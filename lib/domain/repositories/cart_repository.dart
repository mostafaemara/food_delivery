import 'package:dartz/dartz.dart';
import "../failures/failure.dart";
import 'package:food_delivery_app/domain/entities/cart_item.dart';

abstract class CartRepository {
  Future<Either<ServerFailure, List<CartItem>>> getCartitems(String uid);
  Future<Either<ServerFailure, Unit>> addCartItem(
      String id, int quantity, String uid);
  Future<Either<ServerFailure, Unit>> updateCartItem(
      String id, int quantity, String uid);
  Future<Either<ServerFailure, Unit>> deleteCartItem(String id, String uid);
}
