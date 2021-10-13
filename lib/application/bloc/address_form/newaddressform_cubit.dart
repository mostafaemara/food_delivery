import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/application/bloc/addresses/addresses_cubit.dart';
import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import 'package:food_delivery_app/domain/validators.dart';

import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/core/validation_failure.dart';

import 'package:food_delivery_app/presentation/pages/add_new_address/widgets/address_selection_form_field.dart';
part 'newaddressform_state.dart';

class NewaddressformCubit extends Cubit<NewaddressformState> {
  final AddressRepository addressRepo;
  final AddressesCubit addressesCubit;
  final String uid;
  NewaddressformCubit(
      {required this.addressRepo,
      required this.addressesCubit,
      required this.uid})
      : super(NewaddressformState(
            city: right(""),
            phoneNumber: right(""),
            zone: right(""),
            street: right(""),
            building: right(""),
            floor: right(""),
            apartment: right(""),
            villa: right(""),
            addressType: AddressType.building,
            failure: none(),
            isSubmitting: false,
            isSuccess: false));

  cityChange(String city) {
    emit(state.copyWith(city: validateAddressField(city)));
  }

  phoneChange(String phoneNumber) {
    emit(state.copyWith(phoneNumber: validatephoneNumber(phoneNumber)));
  }

  zoneChanged(String zone) {
    emit(state.copyWith(zone: validateAddressField(zone)));
  }

  streetChanged(String street) {
    emit(state.copyWith(street: validateAddressField(street)));
  }

  buildingChanged(String building) {
    emit(state.copyWith(building: validateAddressField(building)));
  }

  floorChanged(String floor) {
    emit(state.copyWith(floor: validateAddressField(floor)));
  }

  apartmentChanged(String apartment) {
    emit(state.copyWith(apartment: validateAddressField(apartment)));
  }

  villaChanged(String villa) {
    emit(state.copyWith(villa: validateAddressField(villa)));
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
