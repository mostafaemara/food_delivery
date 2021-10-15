import 'package:bloc/bloc.dart';

import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/failures/validation_failure.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/domain/validators/validators.dart';
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
    emit(state.copyWith(addressType: addressType));
  }

  bool _isBuildingAdressFieldValid() {
    return (state.city.isRight() &&
        state.zone.isRight() &&
        state.street.isRight() &&
        state.phoneNumber.isRight() &&
        state.building.isRight() &&
        state.floor.isRight() &&
        state.apartment.isRight());
  }

  bool _isVillaAdressFieldValid() {
    return (state.city.isRight() &&
        state.zone.isRight() &&
        state.street.isRight() &&
        state.phoneNumber.isRight() &&
        state.villa.isRight());
  }

  void submit() async {
    if (state.addressType == AddressType.building) {
      _addBuildingAddress();
    } else {
      _addVillaAddress();
    }
  }

  _addBuildingAddress() async {
    if (_isBuildingAdressFieldValid()) {
      final address = _createBuildingAddress();
      emit(state.copyWith(isSubmitting: true, failure: none()));
      final result = await addressRepo.addAddress(uid: uid, address: address);
      result.fold((failure) => emit(state.copyWith(failure: some(failure))),
          (addressId) {
        addressesCubit.addAdress(address.copyWith(id: addressId));
        emit(state.copyWith(
            failure: none(), isSubmitting: false, isSuccess: true));
      });
    }
  }

  _addVillaAddress() async {
    if (_isVillaAdressFieldValid()) {
      final address = _createVillaAddress();
      emit(state.copyWith(isSubmitting: true, failure: none()));
      final result = await addressRepo.addAddress(uid: uid, address: address);
      result.fold((failure) => emit(state.copyWith(failure: some(failure))),
          (addressId) {
        addressesCubit.addAdress(address.copyWith(id: addressId));
        emit(state.copyWith(
            failure: none(), isSubmitting: false, isSuccess: true));
      });
    }
  }

  Address _createBuildingAddress() {
    final city = state.city.getOrElse(() {
      throw Exception("App should crash");
    });
    final zone = state.zone.getOrElse(() {
      throw Exception("App should crash");
    });
    final street = state.street.getOrElse(() {
      throw Exception("App should crash");
    });
    final building = state.building.getOrElse(() {
      throw Exception("App should crash");
    });
    final floor = state.floor.getOrElse(() {
      throw Exception("App should crash");
    });
    final apartment = state.apartment.getOrElse(() {
      throw Exception("App should crash");
    });

    final phoneNumber = state.phoneNumber.getOrElse(() {
      throw Exception("App should crash");
    });

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
    final city = state.city.getOrElse(() {
      throw Exception("App should crash");
    });
    final zone = state.zone.getOrElse(() {
      throw Exception("App should crash");
    });
    final street = state.street.getOrElse(() {
      throw Exception("App should crash");
    });
    final villa = state.building.getOrElse(() {
      throw Exception("App should crash");
    });

    final phoneNumber = state.phoneNumber.getOrElse(() {
      throw Exception("App should crash");
    });

    return Address.villaAddress(
        villa: villa,
        id: "",
        city: city,
        zone: zone,
        street: street,
        mobilePhoneNumber: phoneNumber);
  }
}
