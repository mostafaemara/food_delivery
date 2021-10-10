import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/address.dart';

abstract class AddressRepository {
  Future<Either<AddressFailure, List<Address>>> getAddresses(String uid);
  Future<Either<AddressFailure, Unit>> addAddress(
      {required String uid, required Address address});
  Future<Either<AddressFailure, Unit>> deleteAddress(
      {required String uid, required String addressId});
}
