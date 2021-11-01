import 'package:freezed_annotation/freezed_annotation.dart';
part "order_status.freezed.dart";

@freezed
class OrderStatus with _$OrderStatus {
  const factory OrderStatus.submitted() = _Submitted;
  const factory OrderStatus.onTheWayToYou() = _OnTheWayToYou;
  const factory OrderStatus.recevied() = _Recevied;
}
