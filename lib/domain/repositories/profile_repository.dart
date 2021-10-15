import 'package:dartz/dartz.dart';
import "../failures/failure.dart";

import 'package:food_delivery_app/domain/entities/profile.dart';

abstract class ProfileRepository {
  Future<Either<ProfileFailure, Profile>> getProfile({required String uid});
  Future<Either<ProfileFailure, Unit>> updateProfile(
      {required Profile profile, required String uid});
}
