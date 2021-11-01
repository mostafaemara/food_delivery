part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.loaded({required List<Order> orders}) = _Loaded;
  const factory OrdersState.failure({required ServerFailure failure}) =
      _Failure;
}
