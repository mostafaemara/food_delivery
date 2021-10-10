import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/data/firestore_collections.dart';
import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import "../mappers/address_mapper.dart";

class FirestoreAdressRepository implements AddressRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<Either<AddressFailure, Unit>> addAddress(
      {required String uid, required Address address}) async {
    try {
      await firestore
          .collection(FirestoreCollections.users)
          .doc(uid)
          .collection(FirestoreCollections.addresses)
          .add(addressToMap(address));

      return right(unit);
    } catch (e) {
      return left(const AddressFailure.serverFailiure());
    }
  }

  @override
  Future<Either<AddressFailure, Unit>> deleteAddress(
      {required String uid, required String addressId}) async {
    try {
      await firestore
          .collection(FirestoreCollections.users)
          .doc(uid)
          .collection(FirestoreCollections.addresses)
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
          .collection(FirestoreCollections.users)
          .doc(uid)
          .collection(FirestoreCollections.addresses)
          .get();

      if (snapshot.docs.isEmpty) {
        return left(const AddressFailure.addressesIsEmpty());
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
      addresses.add(mapToAddress(document.data()));
    }

    return addresses;
  }
}
