import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/domain/entities/address.dart';

enum AddressType { villa, building }

extension DocmentToDomainMapper on QueryDocumentSnapshot<Map<String, dynamic>> {
  Address docToBuildingAddress() {
    return Address.buildingAddress(
        city: data()["city"],
        zone: data()["zone"],
        street: data()["street"],
        mobilePhoneNumber: data()["mobilePhoneNumber"],
        apartment: data()["apartment"],
        building: data()["building"],
        floor: data()["floor"],
        id: id);
  }

  Address docToVillaAddress() {
    return Address.villaAddress(
        city: this["city"],
        zone: this["zone"],
        street: this["street"],
        mobilePhoneNumber: this["mobilePhoneNumber"],
        villa: this["villa"],
        id: id);
  }

  Address docToAddressByType() {
    switch (addressType()) {
      case AddressType.villa:
        return docToVillaAddress();

      case AddressType.building:
        return docToBuildingAddress();
    }
  }

  AddressType addressType() {
    if (data()["addressType"] == "building") {
      return AddressType.building;
    } else {
      return AddressType.villa;
    }
  }
}

extension AddressToMap on Address {
  Map<String, dynamic> toMap() => when(
        buildingAddress: (city, zone, street, building, floor, apartment,
            mobilePhoneNumber, _) {
          return {
            "city": city,
            "zone": zone,
            "street": street,
            "mobilePhoneNumber": mobilePhoneNumber,
            "apartment": apartment,
            "building": building,
            "floor": floor,
            "addressType": "building"
          };
        },
        villaAddress: (city, zone, street, villa, mobilePhoneNumber, _) {
          return {
            "city": city,
            "zone": zone,
            "street": street,
            "mobilePhoneNumber": mobilePhoneNumber,
            "villa": villa,
            "addressType": "villa"
          };
        },
      );
}
