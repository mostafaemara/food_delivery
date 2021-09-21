import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import "../mappers/firebase_user_mapper.dart";
import 'package:food_delivery_app/features/auth/domain/entities/user.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/features/auth/domain/repositories/auth.dart';

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
    // TODO: implement loginWithEmailAndPassword
  }

  @override
  Future<Either<Failure, User>> loginWithGoogle() async {
    // TODO: implement loginWithGoogle
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
}
