import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/auth/user.dart';

abstract class AuthRepositoryInterface {
  Stream<Option<User>> get onAuthChanged;
  Future<Either<Failure, User>> loginWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, User>> loginWithGoogle();
  Future<Either<Failure, User>> signUpWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, void>> signOut();
}
