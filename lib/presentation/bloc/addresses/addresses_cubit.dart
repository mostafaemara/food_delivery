import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/failures/failure.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addresses_state.dart';
part "addresses_cubit.freezed.dart";

class AddressesCubit extends Cubit<AddressesState> {
  AuthBloc authBloc;
  late StreamSubscription onAuthChange;
  AddressRepository addressRepo;
  AddressesCubit({required this.authBloc, required this.addressRepo})
      : super(AddressesState.initial()) {
    onAuthChange = authBloc.stream.listen((authState) {
      authState.when(
        authenticated: (user) async {
          final result = await addressRepo.getAddresses(user.id);

          result.fold((failure) => emit(state.copyWith(failure: some(failure))),
              (addresses) => emit(state.copyWith(addresses: addresses)));
          final selectedAddressResult =
              await addressRepo.getSelectedAddress(user.id);

          selectedAddressResult.fold(
              (failure) => emit(state.copyWith(selectedAddress: none())),
              (addressId) =>
                  emit(state.copyWith(selectedAddress: some(addressId))));
        },
        unAuthenticated: () {
          emit(AddressesState.initial());
        },
      );
    });
  }

  void selectAddress(String addressId) {
    authBloc.state.when(
      authenticated: (user) async {
        final result = await addressRepo.setSelectedAddress(
            uid: user.id, addressId: addressId);
        result.fold(
            (failure) => null,
            (success) =>
                emit(state.copyWith(selectedAddress: some(addressId))));
      },
      unAuthenticated: () => null,
    );
  }

  void addAdress(Address address) {
    authBloc.state.when(
      authenticated: (user) {
        final addresses = [...state.addresses, address];
        emit(state.copyWith(addresses: addresses));
      },
      unAuthenticated: () => null,
    );
  }

  void removeAddress(String addressId) {
    authBloc.state.when(
      authenticated: (user) {
        var addresses = [...state.addresses];
        addresses.removeWhere((address) => address.id == addressId);
        emit(state.copyWith(addresses: addresses));
      },
      unAuthenticated: () => null,
    );
  }
}
