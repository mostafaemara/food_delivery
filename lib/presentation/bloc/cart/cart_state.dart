part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required Option<User> user,
      required List<CartItem> items,
      required Option<AuthFailure> failure,
      required double totalPrice}) = _CartState;
}