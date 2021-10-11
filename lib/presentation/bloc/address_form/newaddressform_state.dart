part of "newaddressform_cubit.dart";

class NewaddressformState {
  final Either<AddressFieldValidationFailure, String> city;
  final Either<AddressFieldValidationFailure, String> zone;
  final Either<AddressFieldValidationFailure, String> street;
  final Either<AddressFieldValidationFailure, String> building;
  final Either<AddressFieldValidationFailure, String> floor;
  final Either<AddressFieldValidationFailure, String> apartment;
  final Either<AddressFieldValidationFailure, String> villa;
  final Either<PhoneNumberValidationFailure, String> phoneNumber;
  final AddressType addressType;
  final Option<AddressFailure> failure;
  final bool isSubmitting;
  final bool isSuccess;

  NewaddressformState(
      {required this.city,
      required this.phoneNumber,
      required this.zone,
      required this.street,
      required this.building,
      required this.floor,
      required this.apartment,
      required this.villa,
      required this.addressType,
      required this.failure,
      required this.isSubmitting,
      required this.isSuccess});

  NewaddressformState copyWith(
      {Either<AddressFieldValidationFailure, String>? city,
      Either<AddressFieldValidationFailure, String>? zone,
      Either<AddressFieldValidationFailure, String>? street,
      Either<AddressFieldValidationFailure, String>? building,
      Either<AddressFieldValidationFailure, String>? floor,
      Either<AddressFieldValidationFailure, String>? apartment,
      Either<AddressFieldValidationFailure, String>? villa,
      Either<PhoneNumberValidationFailure, String>? phoneNumber,
      AddressType? addressType,
      Option<AddressFailure>? failure,
      bool? isSubmitting,
      bool? isSuccess}) {
    return NewaddressformState(
        city: city ?? this.city,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        zone: zone ?? this.zone,
        street: street ?? this.street,
        building: building ?? this.building,
        floor: floor ?? this.floor,
        apartment: apartment ?? this.apartment,
        villa: villa ?? this.villa,
        addressType: addressType ?? this.addressType,
        failure: failure ?? this.failure,
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccess: isSuccess ?? this.isSuccess);
  }
}
