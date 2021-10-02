import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:food_delivery_app/core/failure.dart';
import 'package:food_delivery_app/domain/entities/cart_item.dart';
import 'package:food_delivery_app/domain/entities/user.dart';
import 'package:food_delivery_app/domain/repositories/cart_repository_interface.dart';
import 'package:food_delivery_app/presentation/bloc/auth/auth_bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepositoryInterface _cartRepo;
  final AuthBloc _authBloc;
  late StreamSubscription authChange;
  CartCubit(this._cartRepo, this._authBloc)
      : super(CartState(
            user: none(), items: const [], failure: none(), totalPrice: 0)) {
    authChange = _authBloc.stream.listen((authState) async {
      if (authState is Authenticated) {
        emit(state.copyWith(user: some(authState.user)));
        final result = await _cartRepo.getCartitems(authState.user.id);
        result.fold(
            (failure) => emit(state.copyWith(failure: some(failure))),
            (items) => emit(state.copyWith(
                  failure: none(),
                  items: items,
                )));
      }
    });
  }

  void addCartItem(CartItem item) {
    state.user.fold(() => null, (user) {
      var items = state.items;
      if (state.items.contains(item)) {
        items[state.items.indexOf(item)].increaseQuantity(item.quantity);
        emit(state.copyWith(items: items));
      } else {
        items.add(item);

        emit(state.copyWith(items: items));
      }
    });
  }

  void deleteCartItem(CartItem item) {
    state.user.fold(() => null, (user) {
      var items = state.items;
      if (state.items.contains(item)) {
        items.remove(item);

        emit(state.copyWith(items: items));
      }
    });
  }

  void increaseCartQty(String id) async {
    state.user.fold(() => null, (user) async {
      var items = state.items;

      if (state.items.any((element) => element.id == id)) {
        final index = items.indexWhere((element) => element.id == id);
        items[index].increaseQuantity(1);
        final result = await _cartRepo.addCartItem(
            items[index].id, items[index].quantity, user.id);

        result.fold((failure) => emit(state.copyWith(failure: some(failure))),
            (r) => emit(state.copyWith(items: items)));
      }
    });
  }

  void decreaseCartQty(String id) {}
}
