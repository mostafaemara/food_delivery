import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:food_delivery_app/data/mappers/firebase_user_mapper.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';

class FirebaseAuthRepository implements AuthRepositoryInterface {
  final _auth = firebase_auth.FirebaseAuth.instance;

  @override
  Future<Either<Failure, User>> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return right(credential.toDomainUser());
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(WorngEmailOrPasswordFailure());
      } else {
        return left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, User>> loginWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return left(ProcessAbortedFailure());
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      final userCredential = await _auth.signInWithCredential(credential);

      return right(userCredential.toDomainUser());
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
    return right(unit);
  }

  @override
  Future<Either<Failure, User>> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      return right(credential.toDomainUser());
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(EmailAlreadyInUserFailure());
      } else {
        return left(ServerFailure());
      }
    }
  }

  @override
  Stream<Option<User>> get onAuthChanged {
    return _auth.authStateChanges().map((user) {
      if (user == null) {
        return none();
      } else {
        return some(user.toDomainUser());
      }
    });
  }

  @override
  Future<Option<User>> getUser() async {
    final user = _auth.currentUser;

    if (user != null) {
      return some(user.toDomainUser());
    } else {
      return none();
    }
  }
}
