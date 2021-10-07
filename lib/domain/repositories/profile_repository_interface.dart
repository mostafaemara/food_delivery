import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/profile.dart';

abstract class ProfileRepositoryInterface {
  Future<Either<ProfileFailure, Profile>> getProfile({required String uid});
  Future<Either<ProfileFailure, Unit>> updateProfile(
      {required Profile profile, required String uid});
}
