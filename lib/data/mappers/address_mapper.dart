import 'package:food_delivery_app/domain/entities/address.dart';

enum AddressType { villa, building }

extension AddressToDomain on Map<String, dynamic> {
  BuildingAddress toBuildingAddress() {
    return BuildingAddress(
        city: this["city"],
        zone: this["zone"],
        street: this["street"],
        mobilePhoneNumber: this["mobilePhoneNumber"],
        apartment: this["apartment"],
        building: this["building"],
        floor: this["floor"]);
  }

  VillaAddress toVillaAddress() {
    return VillaAddress(
        city: this["city"],
        zone: this["zone"],
        street: this["street"],
        mobilePhoneNumber: this["mobilePhoneNumber"],
        villa: this["villa"]);
  }

  AddressType addressType() {
    if (this["addressType"] == "building") {
      return AddressType.building;
    } else {
      return AddressType.villa;
    }
  }
}

extension BuildingAddressToMap on BuildingAddress {
  Map<String, dynamic> buildingAddressToMap() {
    return {
      "city": city,
      "zone": zone,
      "street": street,
      "mobilePhoneNumber": mobilePhoneNumber,
      "apartment": apartment,
      "building": building,
      "floor": floor,
    };
  }
}

extension VillaAddressToMap on VillaAddress {
  Map<String, dynamic> villaAddressTomap() {
    return {
      "city": city,
      "zone": zone,
      "street": street,
      "mobilePhoneNumber": mobilePhoneNumber,
      "villa": villa,
    };
  }

  AddressType addressType() {
    if (this is BuildingAddress) {
      return AddressType.building;
    } else {
      return AddressType.villa;
    }
  }
}

Map<String, dynamic> addressToMap(Address address) {
  if (address is BuildingAddress) {
    return address.buildingAddressToMap();
  }
  if (address is VillaAddress) {
    return address.villaAddressTomap();
  } else {
    throw Exception("Invalid Address Type Crash App");
  }
}

Address mapToAddress(Map<String, dynamic> map) {
  if (map.addressType() == AddressType.building) {
    return map.toBuildingAddress();
  }
  if (map.addressType() == AddressType.villa) {
    return map.toVillaAddress();
  } else {
    throw Exception("Invalid Address Type Crash App");
  }
}
