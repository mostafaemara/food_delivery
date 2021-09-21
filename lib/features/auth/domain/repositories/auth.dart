import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/features/auth/domain/entities/user.dart';

abstract class AuthRepositoryInterface {
  Future<Either<Failure, User>> loginWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, User>> loginWithGoogle();
  Future<Either<Failure, User>> signUpWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, void>> signOut();
}
