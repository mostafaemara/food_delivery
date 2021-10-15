import 'package:bloc/bloc.dart';

import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';

import 'package:food_delivery_app/domain/repositories/address_repository.dart';

import 'package:food_delivery_app/presentation/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/presentation/bloc/submission_state.dart';
import 'package:food_delivery_app/presentation/inputs/address_input.dart';
import 'package:food_delivery_app/presentation/inputs/mobile_phone_number_input.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'newaddressform_state.dart';
part "newaddressform_cubit.freezed.dart";

class NewaddressformCubit extends Cubit<NewAddressFormState> {
  final AddressRepository addressRepo;
  final AddressesCubit addressesCubit;
  final String uid;
  NewaddressformCubit(
      {required this.addressRepo,
      required this.addressesCubit,
      required this.uid})
      : super(NewAddressFormState.initial());

  cityChange(String city) {
    emit(state.copyWith(cityInput: AddressInput.dirty(city)));
  }

  phoneChange(String phoneNumber) {
    emit(state.copyWith(
        mobilePhoneNumberInput: MobilePhoneNumberInput.dirty(phoneNumber)));
  }

  zoneChanged(String zone) {
    emit(state.copyWith(zoneInput: AddressInput.dirty(zone)));
  }

  streetChanged(String street) {
    emit(state.copyWith(streetInput: AddressInput.dirty(street)));
  }

  buildingChanged(String building) {
    emit(state.copyWith(buildingInput: AddressInput.dirty(building)));
  }

  floorChanged(String floor) {
    emit(state.copyWith(floorInput: AddressInput.dirty(floor)));
  }

  apartmentChanged(String apartment) {
    emit(state.copyWith(apartmentInput: AddressInput.dirty(apartment)));
  }

  villaChanged(String villa) {
    emit(state.copyWith(villaInput: AddressInput.dirty(villa)));
  }

  void addressTypeChanged(AddressType? addressType) {
    emit(state.copyWith(
        addressType: addressType ?? const AddressType.building()));
  }

  bool _isBuildingAdressFieldValid() {
    return (state.cityInput.valid &&
        state.zoneInput.valid &&
        state.streetInput.valid &&
        state.mobilePhoneNumberInput.valid &&
        state.buildingInput.valid &&
        state.floorInput.valid &&
        state.apartmentInput.valid);
  }

  bool _isVillaAdressFieldValid() {
    return (state.cityInput.valid &&
        state.zoneInput.valid &&
        state.streetInput.valid &&
        state.mobilePhoneNumberInput.valid &&
        state.villaInput.valid);
  }

  void submit() async {
    state.addressType.when(
      building: () => _addBuildingAddress(),
      villa: () => _addVillaAddress(),
    );
  }

  _addBuildingAddress() async {
    if (_isBuildingAdressFieldValid()) {
      final address = _createBuildingAddress();
      emit(state.copyWith(submissionState: const SubmissionState.submitting()));
      final result = await addressRepo.addAddress(uid: uid, address: address);
      result.fold(
          (failure) => emit(state.copyWith(
              submissionState: SubmissionState.failed(failure: failure))),
          (addressId) {
        addressesCubit.addAdress(address.copyWith(id: addressId));
        emit(state.copyWith(submissionState: const SubmissionState.success()));
      });
    }
  }

  _addVillaAddress() async {
    if (_isVillaAdressFieldValid()) {
      final address = _createVillaAddress();
      emit(state.copyWith(submissionState: const SubmissionState.submitting()));
      final result = await addressRepo.addAddress(uid: uid, address: address);
      result.fold(
          (failure) => emit(state.copyWith(
              submissionState: SubmissionState.failed(failure: failure))),
          (addressId) {
        addressesCubit.addAdress(address.copyWith(id: addressId));
        emit(state.copyWith(submissionState: const SubmissionState.success()));
      });
    }
  }

  Address _createBuildingAddress() {
    final city = state.cityInput.value;
    final zone = state.zoneInput.value;
    final street = state.streetInput.value;
    final building = state.buildingInput.value;
    final floor = state.floorInput.value;
    final apartment = state.apartmentInput.value;

    final phoneNumber = state.mobilePhoneNumberInput.value;

    return Address.buildingAddress(
        apartment: apartment,
        id: "",
        building: building,
        floor: floor,
        city: city,
        zone: zone,
        street: street,
        mobilePhoneNumber: phoneNumber);
  }

  Address _createVillaAddress() {
    final city = state.cityInput.value;
    final zone = state.zoneInput.value;
    final street = state.streetInput.value;
    final villa = state.villaInput.value;

    final phoneNumber = state.mobilePhoneNumberInput.value;

    return Address.villaAddress(
        villa: villa,
        id: "",
        city: city,
        zone: zone,
        street: street,
        mobilePhoneNumber: phoneNumber);
  }
}
