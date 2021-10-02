part of 'cart_cubit.dart';

@immutable
class CartState {
  final Option<User> user;
  final List<CartItem> items;
  final Option<Failure> failure;
  final double totalPrice;

  const CartState(
      {required this.user,
      required this.items,
      required this.failure,
      required this.totalPrice});

  CartState copyWith(
      {Option<User>? user,
      List<CartItem>? items,
      Option<Failure>? failure,
      double? totalPrice}) {
    return CartState(
        user: user ?? this.user,
        items: items ?? this.items,
        failure: failure ?? this.failure,
        totalPrice: totalPrice ?? this.totalPrice);
  }
}
