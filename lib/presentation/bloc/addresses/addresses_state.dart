part of 'addresses_cubit.dart';

@freezed
class AddressesState with _$AddressesState {
  const factory AddressesState(
      {required List<Address> addresses,
      required Option<AddressFailure> failure}) = _AddressesState;

  factory AddressesState.initial() =>
      _AddressesState(addresses: [], failure: none());
}
