import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:food_delivery_app/domain/entities/address.dart';
import 'package:food_delivery_app/domain/repositories/address_repository.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';

part 'addresses_state.dart';

class AddressesCubit extends Cubit<AddressesState> {
  AuthBloc authBloc;
  late StreamSubscription onAuthChange;
  AddressRepository addressRepo;
  AddressesCubit({required this.authBloc, required this.addressRepo})
      : super(AddressesState([])) {
    onAuthChange = authBloc.stream.listen((authState) {
      authState.when(
        authenticated: (user) async {
          final result = await addressRepo.getAddresses(user.id);
          result.fold((failure) {
            failure.when(
              serverFailiure: () => throw Exception("Crash the app"),
              addressesIsEmpty: () => emit(AddressesState([])),
            );
          }, (addresses) => emit(AddressesState(addresses)));
        },
        unAuthenticated: () {
          emit(AddressesState([]));
        },
      );
    });
  }

  void addAdress(Address address) {
    authBloc.state.when(
      authenticated: (user) {
        final addresses = [...state.addresses, address];
        emit(AddressesState(addresses));
      },
      unAuthenticated: () => null,
    );
  }

  void removeAddress(String addressId) {
    authBloc.state.when(
      authenticated: (user) {
        var addresses = [...state.addresses];
        addresses.removeWhere((address) => address.id == addressId);
        emit(AddressesState(addresses));
      },
      unAuthenticated: () => null,
    );
  }
}
