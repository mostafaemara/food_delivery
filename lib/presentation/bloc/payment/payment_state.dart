part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _PaymentInit;
  const factory PaymentState.loading() = _PaymentLoading;
  const factory PaymentState.paymentPrepared({required Preorder preorder}) =
      _PaymentPrepared;
  const factory PaymentState.paymentSuccess() = _PaymentSuccess;
  const factory PaymentState.failure({required PaymentFailure failure}) =
      _PaymentFailure;
}
