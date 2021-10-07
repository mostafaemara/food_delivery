import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/models/profile_model.dart';
import 'package:food_delivery_app/domain/entities/profile.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/profile_repository_interface.dart';
import "../mappers/profile_mapper.dart";

class FirestoreProfileRepository implements ProfileRepositoryInterface {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<Either<ProfileFailure, Profile>> getProfile(
      {required String uid}) async {
    try {
      final snapshot = await firestore.collection("users").doc(uid).get();
      if (snapshot.data()!.isEmpty) {
        return left(const ProfileFailure.profileHasNoDataFailure());
      }

      return right(ProfileModel.fromMap(snapshot.data()!));
    } catch (e) {
      log("Somthing Went Wrong!", name: "ProfileRepository", error: e);
      return (left(const ProfileFailure.serverFailure()));
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateProfile(
      {required Profile profile, required String uid}) async {
    try {
      await firestore.collection("users").doc(uid).update(profile.toMap());

      return right(unit);
    } catch (e) {
      log("Somthing Went Wrong!", name: "ProfileRepository", error: e);
      return (left(const ProfileFailure.serverFailure()));
    }
  }
}
