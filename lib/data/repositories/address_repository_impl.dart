import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/firestore_collections.dart';
import 'package:food_delivery_app/domain/entities/address.dart';

import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import "../mappers/address_mapper.dart";

class AdressRepositoryImpl implements AddressRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<AddressFailure, String>> addAddress(
      {required String uid, required Address address}) async {
    try {
      final documentReference = await firestore
          .collection(FirestoreConfig.usersCollection)
          .doc(uid)
          .collection(FirestoreConfig.addressesCollection)
          .add(AddressMapper.addressToMap(address));

      return right(documentReference.id);
    } catch (e) {
      return left(const AddressFailure.serverFailiure());
    }
  }

  @override
  Future<Either<AddressFailure, Unit>> deleteAddress(
      {required String uid, required String addressId}) async {
    try {
      await firestore
          .collection(FirestoreConfig.usersCollection)
          .doc(uid)
          .collection(FirestoreConfig.addressesCollection)
          .doc(addressId)
          .delete();

      return right(unit);
    } catch (e) {
      return left(const AddressFailure.serverFailiure());
    }
  }

  @override
  Future<Either<AddressFailure, List<Address>>> getAddresses(String uid) async {
    try {
      final snapshot = await firestore
          .collection(FirestoreConfig.usersCollection)
          .doc(uid)
          .collection(FirestoreConfig.addressesCollection)
          .get();

      if (snapshot.docs.isEmpty) {
        return right([]);
      }

      return right(documentsToAdresses(snapshot.docs));
    } catch (e) {
      return left(const AddressFailure.serverFailiure());
    }
  }

  List<Address> documentsToAdresses(
      List<QueryDocumentSnapshot<Map<String, dynamic>>> documents) {
    List<Address> addresses = [];
    for (final document in documents) {
      addresses.add(AddressMapper.documentToAddress(document));
    }

    return addresses;
  }

  @override
  Future<Either<AddressFailure, String>> getSelectedAddress(String uid) async {
    try {
      final snapshot = await firestore
          .collection(FirestoreConfig.usersCollection)
          .doc(uid)
          .get();

      return right(snapshot.data()?["selectedAddress"]);
    } catch (e) {
      return left(const AddressFailure.noAddressSelected());
    }
  }

  @override
  Future<Either<AddressFailure, Unit>> setSelectedAddress(
      {required String uid, required String addressId}) async {
    try {
      await firestore
          .collection(FirestoreConfig.usersCollection)
          .doc(uid)
          .set({"selectedAddress": addressId});

      return right(unit);
    } catch (e) {
      return left(const AddressFailure.serverFailiure());
    }
  }
}
