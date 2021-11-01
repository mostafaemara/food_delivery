import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/entities/order_status.dart';

class AddressMapper {
  static Map<String, dynamic> addressToMap(Address address) {
    return address.when(
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

  static Address _documentToBuildingAddress(
      QueryDocumentSnapshot<Map<String, dynamic>> document) {
    return Address.buildingAddress(
        city: document.data()["city"],
        zone: document.data()["zone"],
        street: document.data()["street"],
        mobilePhoneNumber: document.data()["mobilePhoneNumber"],
        apartment: document.data()["apartment"],
        building: document.data()["building"],
        floor: document.data()["floor"],
        id: document.id);
  }

  static Address _mapToBuildingAddress(Map<String, dynamic> map) {
    return Address.buildingAddress(
        city: map["city"],
        zone: map["zone"],
        street: map["street"],
        mobilePhoneNumber: map["mobilePhoneNumber"],
        apartment: map["apartment"],
        building: map["building"],
        floor: map["floor"],
        id: "");
  }

  static Address _mapToVillaAddress(Map<String, dynamic> map) {
    return Address.villaAddress(
        city: map["city"],
        zone: map["zone"],
        street: map["street"],
        mobilePhoneNumber: map["mobilePhoneNumber"],
        villa: map["villa"],
        id: "");
  }

  static Address _documentToVillaAddress(
      QueryDocumentSnapshot<Map<String, dynamic>> document) {
    return Address.villaAddress(
        city: document.data()["city"],
        zone: document.data()["zone"],
        street: document.data()["street"],
        mobilePhoneNumber: document.data()["mobilePhoneNumber"],
        villa: document.data()["villa"],
        id: document.id);
  }

  static Address documentToAddress(
      QueryDocumentSnapshot<Map<String, dynamic>> document) {
    final addressType = document.data()["addressType"];

    if (addressType == "building") {
      return _documentToBuildingAddress(document);
    } else {
      return _documentToVillaAddress(document);
    }
  }

  static Address mapToAddress(Map<String, dynamic> map) {
    final addressType = map["addressType"];

    if (addressType == "building") {
      return _mapToBuildingAddress(map);
    } else {
      return _mapToVillaAddress(map);
    }
  }
}
