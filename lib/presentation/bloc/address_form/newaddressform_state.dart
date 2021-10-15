part of "newaddressform_cubit.dart";

@freezed
class NewAddressFormState with _$NewAddressFormState {
  const factory NewAddressFormState(
          {required AddressInput cityInput,
          required MobilePhoneNumberInput mobilePhoneNumberInput,
          required AddressInput zoneInput,
          required AddressInput streetInput,
          required AddressInput buildingInput,
          required AddressInput floorInput,
          required AddressInput apartmentInput,
          required AddressInput villaInput,
          required AddressType addressType,
          required SubmissionState<AddressFailure> submissionState}) =
      _NewAddressFormState;

  factory NewAddressFormState.initial() => const _NewAddressFormState(
      cityInput: AddressInput.pure(),
      mobilePhoneNumberInput: MobilePhoneNumberInput.pure(),
      zoneInput: AddressInput.pure(),
      streetInput: AddressInput.pure(),
      buildingInput: AddressInput.pure(),
      floorInput: AddressInput.pure(),
      apartmentInput: AddressInput.pure(),
      villaInput: AddressInput.pure(),
      addressType: AddressType.building(),
      submissionState: SubmissionState.idle());
}

@freezed
abstract class AddressType with _$AddressType {
  const factory AddressType.building() = _BuildingAddress;
  const factory AddressType.villa() = _VillaAddress;
}
