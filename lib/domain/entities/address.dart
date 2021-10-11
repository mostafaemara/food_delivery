import 'package:freezed_annotation/freezed_annotation.dart';

part "address.freezed.dart";

@freezed
class Address with _$Address {
  factory Address.buildingAddress(
      {required String apartment,
      required String id,
      required String building,
      required String floor,
      required String city,
      required String zone,
      required String street,
      required String mobilePhoneNumber}) = BuildingAddress;
  factory Address.villaAddress(
      {required String villa,
      required String city,
      required String id,
      required String zone,
      required String street,
      required String mobilePhoneNumber}) = VillaAddress;
}

// class Building {
//   final String apartment;
//   final String building;
//   final String floor;
//   Building(
//       {required this.apartment, required this.building, required this.floor});
// }

// class Villa {
//   final String villa;

//   Villa({
//     required this.villa,
//   });
// }

// class VillaAddress extends Address implements Villa {
//   @override
//   final String villa;

//   VillaAddress(
//       {required this.villa,
//       required String city,
//       required String zone,
//       required String street,
//       required String mobilePhoneNumber})
//       : super(
//             city: city,
//             street: street,
//             zone: zone,
//             mobilePhoneNumber: mobilePhoneNumber);
// }

// class BuildingAddress extends Address implements Building {
//   @override
//   final String apartment;
//   @override
//   final String building;
//   @override
//   final String floor;

//   BuildingAddress(
//       {required this.apartment,
//       required this.building,
//       required this.floor,
//       required String city,
//       required String zone,
//       required String street,
//       required String mobilePhoneNumber})
//       : super(
//             city: city,
//             street: street,
//             zone: zone,
//             mobilePhoneNumber: mobilePhoneNumber);
// }
