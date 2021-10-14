part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.submitting() = Submitting;
  const factory LoginState.success() = Success;
  const factory LoginState.idle() = Idle;
  const factory LoginState.error({required AuthFailure failure}) =
      LoginStateError;
}
