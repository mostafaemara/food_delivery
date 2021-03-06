import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:food_delivery_app/data/mappers/firebase_user_mapper.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/auth_repository.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  final _auth = firebase_auth.FirebaseAuth.instance;

  @override
  Future<Either<AuthFailure, User>> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return right(credential.toDomainUser());
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.worngEmailOrPassword());
      } else {
        return left(const AuthFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> loginWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return left(const AuthFailure.processAborted());
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = firebase_auth.GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      final userCredential = await _auth.signInWithCredential(credential);

      return right(userCredential.toDomainUser());
    } catch (e) {
      return left(const AuthFailure.serverFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword(
      String email, String password, String userName) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await credential.user!.updateDisplayName(userName);
      final user = _auth.currentUser;
      return right(user!.toDomainUser());
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverFailure());
      }
    }
  }

  // @override
  // Stream<Option<User>> get onAuthChanged {
  //  return _auth.authStateChanges().map((user) {
  //    if (user == null) {
  //     return none();
  //   } else {
  //     return some(user.toDomainUser());
  //    }
  //  });
//  }

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
