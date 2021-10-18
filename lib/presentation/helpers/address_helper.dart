import 'package:food_delivery_app/domain/entities/address.dart';

extension AddressHelper on Address {
  String formattedString() {
    return when(
      buildingAddress: (city, zone, street, building, floor, apartment,
              mobilePhoneNumber, id) =>
          "$city $zone $street $building $floor $apartment",
      villaAddress: (city, zone, street, villa, id, mobilePhoneNumber) =>
          "$city $zone $street $villa",
    );
  }
}

extension AddressListHelper on List<Address> {
  Address getAddressById(id) {
    return firstWhere((element) => element.id == id);
  }
}
