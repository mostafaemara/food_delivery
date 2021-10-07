import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/user.dart';

abstract class AuthRepositoryInterface {
  Future<Option<User>> getUser();
  // Stream<Option<User>> get onAuthChanged;
  Future<Either<AuthFailure, User>> loginWithEmailAndPassword(
      String email, String password);
  Future<Either<AuthFailure, User>> loginWithGoogle();
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword(
      String email, String password, String userName);
  Future<Either<AuthFailure, void>> signOut();
}
