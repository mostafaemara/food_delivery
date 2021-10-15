import 'package:dartz/dartz.dart';
import "../failures/failure.dart";
import 'package:food_delivery_app/domain/entities/cart_item.dart';

abstract class CartRepository {
  Future<Either<AuthFailure, List<CartItem>>> getCartitems(String uid);
  Future<Either<AuthFailure, Unit>> addCartItem(
      String id, int quantity, String uid);
  Future<Either<AuthFailure, Unit>> updateCartItem(
      String id, int quantity, String uid);
  Future<Either<AuthFailure, Unit>> deleteCartItem(String id, String uid);
}
