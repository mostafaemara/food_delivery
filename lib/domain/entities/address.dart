class Address {
  final String city;
  final String zone;
  final String street;
  final String mobilePhoneNumber;

  Address(
      {required this.city,
      required this.zone,
      required this.street,
      required this.mobilePhoneNumber});
}

class BuildingAddress extends Address {
  final String apartment;
  final String building;
  final String floor;
  BuildingAddress(
      {required String city,
      required String zone,
      required String street,
      required String mobilePhoneNumber,
      required this.apartment,
      required this.building,
      required this.floor})
      : super(
            city: city,
            mobilePhoneNumber: mobilePhoneNumber,
            street: street,
            zone: zone);
}

class VillaAddress extends Address {
  final String villa;

  VillaAddress({
    required String city,
    required String zone,
    required String street,
    required String mobilePhoneNumber,
    required this.villa,
  }) : super(
            city: city,
            mobilePhoneNumber: mobilePhoneNumber,
            street: street,
            zone: zone);
}
